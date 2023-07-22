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
  echo '\n==> Updating Pacman\n'
  sudo pacman -Syu

  echo '\n==> Updating AUR\n'
  paru -Syu

  echo '\n==> Updating Flatpak\n'
  flatpak update 
}

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
