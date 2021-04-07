# Use colors in coreutils utilities output
 alias grep='grep --color'

# Aliases to protect against overwriting
 alias vim="nvim"
 alias cp='cp -i'
 alias mv='mv -i'
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias vica="cd ~/dev/vicaOne"
 alias backend="cd ~/dev/Timescale_Backend"
 alias up="cd ../"
 alias dt="cd ~/Desktop"
 alias docs="cd ~/documents"
 alias dl="cd ~/Downloads"
 alias dot="cd ~/.dotfiles" 
 alias c="code"
 alias v="vim"
 alias la="ls -a"
 alias logs="log show --color always"
 alias hostdev="firebase deploy --project vicaone-dev"
 alias hostlive="firebase deploy --project vicaone-live"
 alias python="/usr/local/bin/python"
 alias notes="cd ~/documents/notes"
 

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# touch a file and open it in vscode
cto() {
    touch "${1}" && code -r "${1}"
}

cda() {
    cd "${1}" && ls -a "${1}"
}
