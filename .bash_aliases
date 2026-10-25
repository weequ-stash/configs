alias mods='sudo'

alias ls='ls -Ah --color=auto'
alias ll='ls -l'
alias l='ls'

alias grep='grep --color=auto'

alias c='clear'

jump-up() {
	cd $(printf "%0.s../" $(seq 1 $1))
}
alias ..='jump-up'

# opened tabs in windows terminal
focus-window() {
    local tab=$(( $1 - 1 ))
    cmd //c "%USERPROFILE%/AppData/Local/Microsoft/WindowsApps/wt -w 0 focus-tab -t $tab 2>NUL" 
}
alias nw='cmd //c "%USERPROFILE%/AppData/Local/Microsoft/WindowsApps/wt -w 0 2>NUL"'
alias cw='focus-window $1'