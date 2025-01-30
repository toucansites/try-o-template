#!/bin/bash

# Check if target directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_directory>"
    exit 1
fi

TARGET_DIR="$1"
CONTENTS_DIR="$TARGET_DIR/src/contents"
THEME_DIR="$TARGET_DIR/src/themes/default"

# Remove existing destination directories (if they exist)
[ -d "$CONTENTS_DIR" ] && rm -rf "$CONTENTS_DIR"
[ -d "$THEME_DIR" ] && rm -rf "$THEME_DIR"

# Create fresh directories
mkdir -p "$CONTENTS_DIR"
mkdir -p "$THEME_DIR"

# Copy contents data into src/contents
cp -r contents/* "$CONTENTS_DIR"

# Copy theme data into src/themes/default
cp -r theme/* "$THEME_DIR"

echo "✅ Old directories removed, new files copied!"
echo "📂 Contents -> '$CONTENTS_DIR'"
echo "🎨 Theme -> '$THEME_DIR'"
