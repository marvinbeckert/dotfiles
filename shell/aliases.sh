# Use colors in coreutils utilities output
 alias grep='grep --color'

# Aliases to protect against overwriting
 alias cp='cp -i'
 alias mv='mv -i'
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias vica="~/dev/vicaOne"
 alias backend="cd ~/dev/Timescale_Backend"
 alias dt="cd ~/Desktop"
 alias docs="cd ~/Library/Mobile \Documents/com~apple~CloudDocs/documents"
 alias dl="cd ~/Downloads"
 alias dot="~/.dotfiles"
 alias c="code"
 alias v="vim"
 alias la="ls -a"
 alias python="/usr/local/bin/python"
 alias tmux="tmux -u"


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
