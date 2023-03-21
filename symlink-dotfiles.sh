#!/bin/bash

dotfiles_dir="$HOME/.dotfiles"

# Get a list of dotfiles in the dotfiles directory and all subdirectories
files=$(find "$dotfiles_dir" -type f -name "*" -not -path "*/.git/*")

# Loop over files and create symlinks
for file in $files; do
    # Ignore specific files
    if [[ $(basename $file) == "readme.md" || $(basename $file) == "symlink-dotfiles.sh" ]]; then
        continue
    fi

    # Get the relative path of the dotfile within the dotfiles directory
    rel_path="${file#$dotfiles_dir/}"

    # Remove any existing file and create symlink
    rm -rf "$HOME/$rel_path"
    ln -sf "$file" "$HOME/$rel_path"
    echo "Linked: ~/$rel_path"
done

echo "Dotfile symlinks created."
