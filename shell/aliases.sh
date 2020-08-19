# Use colors in coreutils utilities output
 alias grep='grep --color'

# Aliases to protect against overwriting
 alias cp='cp -i'
 alias mv='mv -i'
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias vica="cd ~/Documents/webdev/vicaOne"
 alias up="cd ../"
 alias rm="rm -i"
 alias dt="cd ~/Desktop"
 alias dl="cd ~/Downloads"
 alias c="code"
 alias v="vim"
 alias la="ls -a"

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

cda() {
    cd "${1}" && ls -a "${1}"
}