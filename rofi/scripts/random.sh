#!/bin/bash

# Directory containing your images
IMAGES_DIR="$HOME/.config/rofi/images"
SYMLINK_PATH="$HOME/.config/rofi/current_rofi_image"

# Check if images directory exists
if [ ! -d "$IMAGES_DIR" ]; then
    echo "Error: Images directory $IMAGES_DIR does not exist"
    exit 1
fi

# Get all image files (add more extensions if needed)
mapfile -t images < <(find "$IMAGES_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.webp" \) 2>/dev/null)

# Check if any images were found
if [ ${#images[@]} -eq 0 ]; then
    echo "Error: No image files found in $IMAGES_DIR"
    exit 1
fi

# Select a random image
random_image="${images[RANDOM % ${#images[@]}]}"

# Remove existing symlink if it exists and create new one
ln -sf "$random_image" "$SYMLINK_PATH"

echo "Created symlink: $SYMLINK_PATH -> $random_image"

