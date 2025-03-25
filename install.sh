#! /bin/bash

# PurpleCord Theme Installer
# This script installs PurpleCord theme files by creating symbolic links in the Vencord themes directory.
# It performs various checks to ensure proper installation and provides detailed error messages if something goes wrong.

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="${HOME}/.config/Vencord/themes"
THEME_FILES=("hide.css" "serverIcons.css")

# Check if Vencord themes directory exists
if [ ! -d "$THEMES_DIR" ]; then
    echo "Error: Vencord themes directory not found at $THEMES_DIR"
    exit 1
fi

# Check if source theme files exist
for file in "${THEME_FILES[@]}"; do
    if [ ! -f "$SCRIPT_DIR/$file" ]; then
        echo "Error: Source theme file '$file' not found in $SCRIPT_DIR"
        exit 1
    fi
done

# Create symbolic links
for file in "${THEME_FILES[@]}"; do
    if ! ln -sf "$SCRIPT_DIR/$file" "$THEMES_DIR/$file" 2> /tmp/purplecord_error; then
        echo "Error: Failed to create symbolic link for $file"
        echo "Error details: $(cat /tmp/purplecord_error)"
        rm -f /tmp/purplecord_error
        exit 1
    fi
done

# Clean up and show success message
rm -f /tmp/purplecord_error
echo "PurpleCord installed successfully!"
