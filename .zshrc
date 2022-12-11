# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#p10k configure
source ~/powerlevel10k/powerlevel10k.zsh-theme

#Alias
alias ls='exa --group-directories-first --icons'
alias ll='ls -la '
alias la='ls -a'
alias lt='ls -la -T -L=2 '
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

#Default editor
#export EDITOR='code'
#export VISUAL='code'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
