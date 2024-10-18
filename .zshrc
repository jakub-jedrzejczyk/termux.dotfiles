export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
VISUAL="nvim"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ll="ls -al"

tmux-window-name() {
	($HOME/.config/tmux/plugins/tmux-window-name/scripts/rename_session_windows.py &)
}

add-zsh-hook chpwd tmux-window-name

eval "$(starship init zsh)"

