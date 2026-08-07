#!/bin/bash

# Minimal Clock Installer
# Installs Conky configuration and required dependencies

set -e

echo "🕒 Installing Minimal Clock..."

# Check for Conky
if ! command -v conky >/dev/null 2>&1; then
    echo "Installing Conky..."
    sudo apt update
    sudo apt install -y conky-all
fi

# Install configuration
mkdir -p "$HOME/.config/conky"

if [ -f ".conkyrc" ]; then
    cp .conkyrc "$HOME/.conkyrc"
else
    echo "Error: .conkyrc not found. Run this script from the repository folder."
    exit 1
fi

# Install font if available
if [ -f "Anurati-Regular.otf" ]; then
    mkdir -p "$HOME/.local/share/fonts"
    cp Anurati-Regular.otf "$HOME/.local/share/fonts/"
    fc-cache -fv
    echo "Font installed."
fi

# Stop old Conky instance
killall conky 2>/dev/null || true

# Start Conky
conky &

echo "✅ Minimal Clock installed successfully!"
echo "Add 'conky' to your startup applications for automatic launch."
