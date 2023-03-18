# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ls='exa --header --icons --grid --git -g'
alias ll='exa --header --icons --grid --git --long -g'
alias la='exa --header --icons --grid --git --long --all -g'
alias tree='exa --tree --icons --level=3'
alias update='sudo dnf -y update; sudo dnf -y upgrade; sudo flatpak -y update'
alias remove='sudo dnf remove -y' 
alias install='sudo dnf install -y'
alias copy='xclip -sel c < '
alias vim='nvim'
alias vi='vim'
alias v='nvim'
alias venv='source .venv/bin/activate'
alias onedrive-sync='onedrive --synchronize'
alias add='git add'
alias push='git push'
alias pull='git pull'
alias cat='bat'

commit() {
	git add . 
	git commit -am "$1"
	git push
}

reduce-pdf() {
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/-default dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}

echo
neofetch
