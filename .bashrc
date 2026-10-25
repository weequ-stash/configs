# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups

# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# Aliases
if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
fi

. /c/Users/$USER/miniconda3/etc/profile.d/conda.sh

cd() {
    builtin cd "$@" || return
    # check if pwd is in JUPYTER
    if [[ $(pwd) =~ /JUPYTER($|/) ]]; then
        if [[ "$CONDA_DEFAULT_ENV" != "ml_base" ]]; then
            conda activate ml_base
        fi
    fi
}

export PATH="$PATH:/c/Users/$USER/AppData/Local/Programs/Microsoft VS Code/bin"

unset PROMPT_COMMAND
# PS1="\[\e[1;7;32m\][WEEQU]\[\e[0;1;33m\] > \[\e[0;38;5;172m\]\A\[\e[0;1;33m\] < \[\e[1;7;35m\][\$MSYSTEM]\[\e[0m\]:\n\[\e[0;33m\]\w\n\[\e[1;32m\]> \[\e[0m\]"

# shorter prompt
PS1="\[\e[1;7;32m\] \[\e[35m\] \[\e[33m\] \[\e[34m\] \[\e[0;38;5;172m\] \A\[\e[0m\]: \[\e[0;33m\]\w\n\[\e[1;32m\]> \[\e[0m\]"