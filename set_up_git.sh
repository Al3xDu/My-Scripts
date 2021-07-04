#!/bin/bash

function set_up_ssh() {
    local user=$1
    local repo=$2
    local ok_status="ok"
    if [[ $# -ne 2 ]]; then
        echo "args not provided right"
        ok_status="not ok"
    fi
    if [[ -z ${user} ]]; then
        echo "user var is empty"
        ok_status="not ok"
    fi
    if [[ -z ${repo} ]]; then
        echo "repo var is empty"
        ok_status="not ok"
    fi
    git remote show origin
    if [[ "$ok_status" == "ok" ]]; then
        git remote set-url origin git+ssh://git@github.com/${user}/${repo}.git
    fi
    git remote show origin
    echo "Final status is ${ok_status}"
}

function set_up_git() {
    local USER=$1
    local REPO=$2
    set_up_ssh ${USER} ${REPO}
}
