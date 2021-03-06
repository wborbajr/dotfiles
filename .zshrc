# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/borba/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  wd
  docker
  docker-compose
  zsh-autosuggestions
  zsh-completions
  osx
  colorize
  golang
  emoji
  vi-mode
  zsh-syntax-highlighting
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"

#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bz="nvim ~/.zshrc"
alias ws="cd /Volumes/BPlus/Workspaces/ "

# Docker
alias dkps="docker ps"
alias dkst="docker stats"
alias dkpsa="docker ps -a"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down --volumes"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"
alias dkcpbuild="docker-compose -f docker-compose.yml up -d --build"

# Git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias gr='git branch -r'
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'

# Python
alias ce='python -m venv ./venv'
alias ae='deactivate &> /dev/null; source ./venv/bin/activate'
alias de='deactivate'

alias v='nvim'

if [ -f /usr/local/bin/screenfetch ]; then screenfetch; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


source $ZSH/oh-my-zsh.sh

# DEFAULT_USER=borba

# prompt_dir() {
#  prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
# }

# prevent sharing shell history between different windows (enabled by default in OMZ)
unsetopt share_history


# SPACESHIP Theme
#SPACESHIP_GOLANG_SYMBOL="=>GO "

# Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
#prompt spaceship

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOBIN=/usr/local/go/bin/
export PATH=$PATH:$GOBIN
