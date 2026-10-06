alias mods='sudo'

alias ls='ls -Ah --color=auto'
alias ll='ls -l'
alias l='ls'

alias grep='grep --color=auto'

# alias ..='cd ..'

jump-up() {
	cd $(printf "%0.s../" $(seq 1 $1))
}
alias ..='jump-up'

alias c='clear'
