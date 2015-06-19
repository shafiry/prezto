# vim aliases

alias mivm='mvim'
alias mvmi='mvim'
alias vim='mvim -v'
alias cdj='cd $(autojump -s | cut -f2 | fzf)'
alias vimf='vim $(ag --hidden -l -g "" | fzf)'
alias vimg='vim $(git ls-files | fzf)'

alias vbadd='~/.vim/bundle.setup install $(cat ~/.vim/bundle.yml | grep -e "^    -" | awk '"'"'{print $2}'"'"' | fzf)'
alias vbdel='~/.vim/bundle.setup delete $(cat ~/.vim/bundle.yml | grep -e "^    -" | awk '"'"'{print $2}'"'"' | fzf)'
alias vbupd='~/.vim/bundle.setup refresh $(cat ~/.vim/bundle.yml | grep -e "^    -" | awk '"'"'{print $2}'"'"' | fzf)'
