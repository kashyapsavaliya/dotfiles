#---------- Yubikey for SSH ----------#

# Set a fixed socket and start the agent if it doesn't exist
#export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
#if [[ ! -S "$SSH_AUTH_SOCK" ]]; then
#    ssh-agent -a "$SSH_AUTH_SOCK" > /dev/null
#fi

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

#---------- Tools ----------#

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

#---------- Aliases ----------#

alias v=nvim
alias t=tmux
alias e="exit"
alias c="clear"

#----- Repos -----#
alias dot="cd $HOME/.dotfiles"
alias website="cd $HOME/Developer/github.com/kashyapsavaliya/website"

#----- LSD -----#
alias ls='lsd'

#---------- Reset cursor blink ----------#
precmd() {
    echo -ne "\e[1 q"
}
