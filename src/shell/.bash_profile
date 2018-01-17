#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export atom = "/usr/local/bin/atom"

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/staff/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/staff/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/staff/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/staff/Downloads/google-cloud-sdk/completion.bash.inc'; fi

clear

# Setting PATH for arm toolchain
# For use by PROS 2.0
PATH=$PATH:/Applications/PROS_2.0/gcc-arm-none-eabi-4_7-2014q2/bin
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$HOME/.yarn/bin:$PATH"

# Setting PATH for arm toolchain
# For use by PROS 2.0
PATH=$PATH:/Applications/PROS_2.0/gcc-arm-none-eabi-4_7-2014q2/bin
export PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
