# Minimal Clock for Wayland

A Wayland-compatible version of Minimal Clock using **Eww (ElKowar's Wacky Widgets)** instead of Conky.

Conky is X11-only, so this version works better on GNOME Wayland, KDE Wayland, Hyprland, and other Wayland desktops.

## Requirements

Install Eww:

```bash
# Follow installation instructions for your distribution
```

## Install

Copy the files:

```bash
mkdir -p ~/.config/eww/minimal-clock
cp *.yuck *.scss ~/.config/eww/minimal-clock/
```

Start:

```bash
eww daemon
eww open minimal-clock
```

## Features

- Native Wayland widget
- Minimal clock design
- Transparent background
- Lightweight
- Customizable CSS styling
