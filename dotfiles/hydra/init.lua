hydra.alert("Hydra loaded", 1.0)

-- shortcuts
local cmd = {"cmd"}
local all = {"cmd", "ctrl", "alt"}

hotkey.bind(all, "R", repl.open)
hotkey.bind(cmd, "HOME", hydra.reload)

-- hotkey.bind(cmd, 'M', ext.grid.maximize_window)
-- hotkey.bind({"cmd"}, "PAD1", generate_move_window_to_quad_func(1))
-- hotkey.bind({"cmd"}, "PAD2", generate_move_window_to_quad_func(2))
-- hotkey.bind({"cmd"}, "PAD3", generate_move_window_to_quad_func(3))
-- hotkey.bind({"cmd"}, "PAD4", generate_move_window_to_quad_func(4))
-- hotkey.bind({"cmd"}, "PAD5", ext.grid.maximize_window())
-- hotkey.bind({"cmd"}, "PAD6", generate_move_window_to_quad_func(6))
-- hotkey.bind({"cmd"}, "PAD7", generate_move_window_to_quad_func(7))
-- hotkey.bind({"cmd"}, "PAD8", generate_move_window_to_quad_func(8))
-- hotkey.bind({"cmd"}, "PAD9", generate_move_window_to_quad_func(9))


--[[ LANGUAGE STRINGS ]]--
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

--[[ UPDATES ]]--
-- save the time when updates are checked
function check_for_updates()
    updates.check()
    settings.set("last_checked_for_updates", os.time())
end

-- check for updates every week
timer.new(timer.weeks(1), check_for_updates):start()
notify.register("show_update", show_update)

-- if this is your first time running Hydra, you're launching it more than a week later, check now
local last_checked_for_updates = settings.get('last_checked_for_updates')
local last_week = os.time() - timer.days(7)
if last_checked_for_updates == nil or last_checked_for_updates <= last_week then
    check_for_updates()
end

-- show available updates
local function show_update()
    os.execute('open https://github.com/sdegutis/Hydra/releases')
end

-- what to do when an update is checked
local function handle_update_check(available)
    local msg

    if available then
        msg = messages.updates.is_available
    else
        msg = messages.updates.is_updated
    end

    notify.show(msg.title, msg.subtitle, msg.body, msg.tag)
end


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

-- maximize the current window
local function maximize_window()
    local win = window.focusedwindow()
    win:setframe(win:screen():frame_without_dock_or_menu())
end

local function get_current_win_and_frame()
    local win = window.focusedwindow()

    return win, win:screen():frame_without_dock_or_menu()
end

--[[ EXPORTS ]]--
autolaunch.set(true)
updates.available = handle_update_check
menu.show(navbar_menu)
