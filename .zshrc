#---------- GPG + Yubikey for SSH ----------#

export GPG_TTY="$(tty)"

if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null 2>&1

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
