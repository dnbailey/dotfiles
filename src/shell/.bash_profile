#!/bin/bash

source_bash_files() {

    declare -r CURRENT_DIRECTORY="$(pwd)"

    declare -r -a FILES_TO_SOURCE=(
        "aliases"
        "bash_prompt"
    )

    local file=""
    local i=""

    cd "$(dirname "$(readlink "${BASH_SOURCE[0]}")")"

    # shellcheck disable=SC2034
    declare -r OS="$(get_os)"

    for i in ${!FILES_TO_SOURCE[*]}; do

        file="$HOME/.${FILES_TO_SOURCE[$i]}"

        [ -r "$file" ] \
            && . "$file"

    done

    cd "$CURRENT_DIRECTORY"

}

source_bash_files
unset -f source_bash_files

clear
