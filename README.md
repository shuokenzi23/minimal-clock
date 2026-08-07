# Minimal Clock 🕒

![Linux](https://img.shields.io/badge/platform-Linux-yellow?logo=linux)
![Conky](https://img.shields.io/badge/widget-Conky-blue)
![License](https://img.shields.io/badge/license-MIT-green)

A lightweight and elegant desktop clock widget for Linux desktops.

Supports both:

- 🖥️ **X11** using Conky
- 🌊 **Wayland** using Eww

## Preview

<img width="1366" height="768" alt="Minimal Clock Preview" src="https://github.com/user-attachments/assets/b1de28e2-7a81-4745-90e3-96aff175d071" />

## ✨ Features

- Minimal desktop clock design
- X11 and Wayland support
- Lightweight and suitable for older hardware
- Transparent wallpaper-friendly style
- Futuristic Anurati typography
- Customizable appearance

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/shuokenzi23/minimal-clock.git
cd minimal-clock
```

Run the installer:

```bash
chmod +x install.sh
./install.sh
```

The installer will ask:

```
1) X11 - Conky version
2) Wayland - Eww version
```

Choose the option matching your desktop session.

---

## 🖥️ X11 Version (Conky)

Requirements:

- Linux with X11
- Conky
- Anurati font (recommended)

The installer automatically:

- Installs Conky
- Copies `.conkyrc`
- Installs the font
- Starts the clock

---

## 🌊 Wayland Version (Eww)

The Wayland version uses **Eww (ElKowar's Wacky Widgets)** because Conky is designed for X11.

Supported environments:

- GNOME Wayland
- KDE Wayland
- Hyprland
- Other Wayland desktops

Eww files are located in:

```
wayland-clock/
```

---

## ⚙️ Customization

### Change time format

Edit the widget configuration or Conky file depending on your version.

### Change colors

For X11 edit `.conkyrc`.

For Wayland edit:

```
wayland-clock/style.scss
```

---

## 🖥️ Autostart

Add the following to your startup applications:

X11:

```
conky
```

Wayland:

```
eww daemon
```

## 🤝 Credits

Inspired by minimalist desktop widgets and adapted for modern Linux systems.

## 📜 License

MIT License. Free to use, modify, and share.
