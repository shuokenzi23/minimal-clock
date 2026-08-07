#!/bin/bash

# Minimal Clock Installer
# Supports X11 (Conky) and Wayland (Eww)

set -e

echo "🕒 Minimal Clock Installer"
echo ""
echo "Choose your desktop session:"
echo "1) X11 - Conky version"
echo "2) Wayland - Eww version"
echo ""
read -p "Enter option (1/2): " choice

if [ "$choice" = "1" ]; then
    echo "Installing X11 Conky version..."

    if ! command -v conky >/dev/null 2>&1; then
        echo "Installing Conky..."
        sudo apt update
        sudo apt install -y conky-all
    fi

    if [ -f ".conkyrc" ]; then
        cp .conkyrc "$HOME/.conkyrc"
    else
        echo "Error: .conkyrc not found"
        exit 1
    fi

    if [ -f "Anurati-Regular.otf" ]; then
        mkdir -p "$HOME/.local/share/fonts"
        cp Anurati-Regular.otf "$HOME/.local/share/fonts/"
        fc-cache -fv
    fi

    killall conky 2>/dev/null || true
    conky &

    echo "✅ X11 Minimal Clock installed!"
    echo "Add conky to startup applications."

elif [ "$choice" = "2" ]; then
    echo "Installing Wayland Eww version..."

    if ! command -v eww >/dev/null 2>&1; then
        echo "Eww is not installed. Please install Eww first."
        echo "https://elkowar.github.io/eww/"
        exit 1
    fi

    mkdir -p "$HOME/.config/eww/minimal-clock"

    if [ -d "wayland-clock" ]; then
        cp wayland-clock/* "$HOME/.config/eww/minimal-clock/"
    else
        echo "Error: wayland-clock folder not found"
        exit 1
    fi

    eww daemon
    eww open minimal-clock

    echo "✅ Wayland Minimal Clock installed!"

else
    echo "Invalid option"
    exit 1
fi
