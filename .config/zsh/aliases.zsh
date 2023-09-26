# Aliasing ls to exa
alias ls='exa --header --icons --grid --git -g'
alias ll='exa --header --icons --grid --git --long -g'
alias la='exa --header --icons --grid --git --long --all -g'
alias tree='exa --tree --icons --level=3'

# Package Manager
alias remove='sudo pacman -Rns --noconfirm' 
alias install='sudo pacman -S --noconfirm'
alias aur='paru -S'
alias yay='paru'
alias copy='xclip -sel c < '

update() {
  echo '\n======>  Updating Pacman <======\n'
  sudo pacman -Syu --noconfirm

  echo '\n======>   Updating AUR   <======\n'
  paru -Syu --noconfirm

  echo '\n======> Updating Flatpak <======\n'
  sudo flatpak update -y
}

# Terminal text editor
alias vim='nvim'
alias vi='/bin/vim'
alias v='nvim'

# Tmux
alias tmux-new='tmux new-session -s'
alias tmux-attach='tmux a -t'

# Python
alias p='python3'
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
