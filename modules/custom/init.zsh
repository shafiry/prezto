alias cdss='cd ~/Workspace/Bijli; vagrant up sscentos; vagrant ssh sscentos'
alias cdssend='vagrant halt sscentos'
alias cdssdep='ssh lva1-app6854.prod'
alias sshlva1build='ssh -f -N -L 8080:localhost:8080 lva1-app6901.prod.linkedin.com'
alias cdws='cd ~/Workspace/Slideshare'
alias nertz='ssh -K eat1-nertzgw01.grid.linkedin.com'
alias stagingserver='eh -e %slideshare.rails_app.staging.base'
alias prodserver='eh -e %slideshare.rails_app.production.base'
alias aliases='vim ~/.zprezto/modules/local/init.zsh'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
