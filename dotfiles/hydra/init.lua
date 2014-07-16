--[[----------------------------------------------------------------------------
-- init.lua - A Hydra config
--
--  * API docs    : http://sdegutis.github.io/hydra/index.html
--  * Github repo : https://github.com/sdegutis/hydra
--
--]]----------------------------------------------------------------------------


--[[----------------------------------------------------------------------------
-- Initialization
--]]----------------------------------------------------------------------------
hydra.alert("Hydra loaded", 1.0)

--[[----------------------------------------------------------------------------
-- Window management helper functions (namespaced to h)
--]]----------------------------------------------------------------------------
local h = {}

-- a shortcut to retrieve the currently focused window
h.win = function()
    return window.focusedwindow()
end

-- a shortcut to retrieve the current "screen"
h.screen = function()
    return h.win():screen()
end

-- a shortcut to retrieve the current "frame"
h.full_frame = function()
    return h.screen():frame_including_dock_and_menu()
end

-- a shortcut to set the currently focused window's frame
h.set_frame = function(frame)
    h.win():setframe(frame)
end

h.focus = function(name)
    return function()
        application.launchorfocus(name)
    end
end

-- maximizes the currently focused window by setting its frame to the screen's
local function maximize_window()
    h.set_frame(h.full_frame())
end

-- adjusts the currently focused window according to the provided func
h.adjust_win = function(fn)
    h.set_frame(fn(h.full_frame()))
end

local function move_win_to_left()
    h.adjust_win(function(frame)
        frame.w = frame.w / 2
        return frame
    end)
end

local function move_win_to_right()
    h.adjust_win(function(frame)
        frame.w = frame.w / 2
        frame.x = frame.w
        return frame
    end)
end

local function move_win_to_bottom()
    h.adjust_win(function(frame)
        frame.h = frame.h / 2
        frame.y = frame.h
        return frame
    end)
end

local function move_win_to_top()
    h.adjust_win(function(frame)
        frame.h = frame.h / 2
        return frame
    end)
end

local function move_win_to_next_screen()
    h.set_frame(h.screen():next():frame_without_dock_or_menu())
end

--[[----------------------------------------------------------------------------
-- Shortcuts and key-bindings
--]]----------------------------------------------------------------------------
local combo = {"ctrl", "alt"}

-- repl
hotkey.bind(combo, "R", repl.open)
-- reload config
hotkey.bind(combo, "HOME", hydra.reload)

-- vimish commands
hotkey.bind(combo, "H", move_win_to_left)
hotkey.bind(combo, "L", move_win_to_right)
hotkey.bind(combo, "K", move_win_to_top)
hotkey.bind(combo, "J", move_win_to_bottom)

hotkey.bind(combo, "SPACE", maximize_window)
hotkey.bind(combo, "N", move_win_to_next_screen)
hotkey.bind(combo, ".", h.focus("iTerm"))
hotkey.bind(combo, ",", h.focus("Google Chrome"))

--[[----------------------------------------------------------------------------
-- Language strings for notifications and menus
--]]----------------------------------------------------------------------------
local messages = {
    updates = {
        is_available = {
            title    = "Hydra update available",
            subtitle = "",
            body     = "Click here to see the changelog and maybe even install it",
            tag      = "show_update",
        },
        is_updated = {
            title    = "No Hydra update available",
            subtitle = "",
            body     = "No Hydra update is available",
            tag      = "",
        }
    },
}

--[[----------------------------------------------------------------------------
-- Handling Hydra updates
--]]----------------------------------------------------------------------------

-- what to do when an update is checked (attached to a hook near the end)
local function handle_update_check(available)
    local msg

    if available then
        msg = messages.updates.is_available
    else
        msg = messages.updates.is_updated
    end

    notify.show(msg.title, msg.subtitle, msg.body, msg.tag)
end

-- show available updates in the browser
local function show_update()
    os.execute('open https://github.com/sdegutis/Hydra/releases')
end

-- check for any updates and set "last_checked" time
local function check_for_updates()
    updates.check()
    settings.set("last_checked_for_updates", os.time())
end

local last_checked_for_updates = settings.get('last_checked_for_updates')
local last_week = os.time() - timer.days(7)

-- if we haven't checked in a while (1 week) let's check now
if last_checked_for_updates == nil or last_checked_for_updates <= last_week then
    check_for_updates()
end

--[[----------------------------------------------------------------------------
-- Configuring the navbar menu
--]]----------------------------------------------------------------------------
local function navbar_menu()
    local titles = {[true] = "Install Update", [false] = "Check for Update..."}
    local funcs = {[true] = updates.install, [false] = check_for_updates}
    local has_updates = (updates.newversion ~= nil)

    return {
        {title = "Reload Config", fn = hydra.reload},
        {title = "-"},
        {title = "About", fn = hydra.showabout},
        {title = titles[has_updates], fn = funcs[has_updates]},
        {title = "Quit Hydra", fn = os.exit},
    }
end

--[[----------------------------------------------------------------------------
-- Lua exports (global vars and stuff)
--]]----------------------------------------------------------------------------
autolaunch.set(true)
updates.available = handle_update_check
menu.show(navbar_menu)
timer.new(timer.weeks(1), check_for_updates):start()
notify.register("show_update", show_update)
