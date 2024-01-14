# Change directory without the cd command 
# setopt autocd

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#p10k configure
source ~/powerlevel10k/powerlevel10k.zsh-theme
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


#Alias
alias ls='exa --group-directories-first --icons'
alias ll='ls -la '
alias la='ls -a'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias r="ranger"
alias g='git'
alias gm='git commit -m'
alias gp="git add -p"
alias gc="git clone"
alias t="tmux"
alias ta="tmux attach"
alias tl="tmux ls"
alias q="exit"
alias v="vim"
alias c="clear"
alias python="python3"
alias pip="pip3"  
alias cat="bat"


# funtion to list tree
function lt {
  if [[ -z $1 ]]
  then
    ls -la -T -L=1 
  else
    ls -la -T -L=$1
  fi
}


#Flutter Path
export PATH="$PATH:/Users/pushkalkishore/Developer/flutter/bin:/Users/pushkalkishore/Downloads/Scripts/"




#Default editor
#export EDITOR='code'
#export VISUAL='code'


#zsh syntaxhighlighting and autosuggest
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/pushkalkishore/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


__jump_chpwd() {
  jump chdir
}

jump_completion() {
  reply="'$(jump hint "$@")'"
}

j() {
  local dir="$(jump cd $@)"
  test -d "$dir" && cd "$dir"
}

typeset -gaU chpwd_functions
chpwd_functions+=__jump_chpwd

compctl -U -K jump_completion j


# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_VIRTUALENV=/opt/homebrew/bin/virtualenv
source /opt/homebrew/bin/virtualenvwrapper.sh


autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Up or down in history based on what is aleready typed
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


bindkey -s ^f "source new_cd\n"