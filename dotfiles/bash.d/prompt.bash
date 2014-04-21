#!/usr/bin/env bash

function _git_prompt() {
    # check if we're in a git repo
    command git rev-parse --is-inside-work-tree &>/dev/null || return

    local git_branch_character="♆"
    #local git_status="(`git status -unormal 2>&1`)"
    local git_branch="(`git rev-parse --abbrev-ref HEAD 2>/dev/null`)"
    local git_hash="`git rev-parse --short=4 HEAD 2>/dev/null`"

    command git diff --quiet --ignore-submodules HEAD &>/dev/null

    if [ $? -eq 1 ]; then
        local git_dirty_hash="${red}${git_hash}${normal}"
    else
        local git_dirty_hash="${green}${git_hash}${normal}"
    fi

    echo "${red}${git_branch_character}${normal} ${git_branch} ${git_dirty_hash} "
}

function _prompt_cwd {
    pwd
}

function _prompt_variable {
    local char="λ"

    if [ $1 -ne 0 ]; then
        local color="${red}";
    else
        local color="${blue}";
    fi

    echo "${color}${char}${normal}"
}

function _prompt_command() {
    local LAST_STATUS=$?

    local prompt_var=`_prompt_variable $LAST_STATUS`
    local git_prompt=`_git_prompt`

    if test -z "$git_prompt"; then
        PS1="[\w] ${prompt_var} "
    else
        PS1="[\w] ${git_prompt}\n${prompt_var} "
    fi
}

PROMPT_COMMAND=_prompt_command
