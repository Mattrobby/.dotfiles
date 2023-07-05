# Aliasing ls to exa
alias ls='exa --header --icons --grid --git -g'
alias ll='exa --header --icons --grid --git --long -g'
alias la='exa --header --icons --grid --git --long --all -g'
alias tree='exa --tree --icons --level=3'

# dnf
alias update='sudo dnf -y update; sudo dnf -y upgrade; sudo flatpak -y update'
alias remove='sudo dnf remove -y' 
alias install='sudo dnf install -y'
alias copy='xclip -sel c < '

# Terminal text editor
alias vim='nvim'
alias vi='vim'
alias v='nvim'

# Python
alias venv='source .venv/bin/activate'

# OneDrive
alias onedrive-sync='onedrive --synchronize'

# Git
alias add='git add'
alias push='git push'
alias pull='git pull'
alias cat='bat'

commit() {
	git add . 
	git commit -am "$1"
}

pcommit() {
	git add . 
	git commit -am "$1"
	git push
}

# Makes pdf smaller size 
reduce-pdf() {
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/-default dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}
