#---------- Path configuration ----------#

export PATH="$HOME/.dotfiles/bin:$PATH"

#---------- Tab completions ----------#

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
autoload -Uz compinit
compinit

#---------- Prompt ----------#

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

#---------- Aliases ----------#

alias v=nvim
alias c="clear"

#----- LSD -----#
alias ls='lsd'
