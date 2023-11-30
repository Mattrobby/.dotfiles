# Aliasing ls to eza
alias ls='eza --header --icons --grid --git -g'
alias ll='eza --header --icons --grid --git --long -g'
alias la='eza --header --icons --grid --git --long --all -g'
alias tree='eza --tree --icons --level=3'

# Package Manager
alias remove='sudo pacman -Rns --noconfirm' 
alias install='sudo pacman -S --noconfirm'
alias aur='paru -S'
alias yay='paru'
alias copy='xclip -sel c < '

update() {
  center_text() {
    local screen_width=$(tput cols)
    local text="$1"
    local text_length=${#text}
    local padding_length=$(( (screen_width - text_length) / 2 - 5 )) # Calculate padding
    local padding=$(printf '=%.0s' $(seq 1 $padding_length)) # Create '=' padding

    echo "${padding}===> $text <===${padding}" # Print with padding
  }
  
  center_text "Updating Pacman"
  sudo pacman -Syu --noconfirm

  echo
  center_text "Updating AUR"
  paru -Syu --noconfirm

  echo
  center_text "Updating Flatpak"
  sudo flatpak update -y
}


# Terminal text editor
alias vim='nvim'
alias vi='/bin/vim'
alias v='nvim'

# Tmux
alias tmux-attach='tmux a -t'
alias tmux-new='tmux new-session -v -s "${1:-$(basename $PWD)}"'

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
