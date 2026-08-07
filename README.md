# Minimal Clock 🕒

A lightweight and elegant **Conky desktop clock widget** for Linux desktops.
Designed for minimal X11 environments like antiX, but works with most Conky-supported setups.

## Preview

<img width="1366" height="768" alt="Minimal Clock Preview" src="https://github.com/user-attachments/assets/b1de28e2-7a81-4745-90e3-96aff175d071" />

## ✨ Features

- Clean minimalist desktop clock
- Perfect text alignment using Conky positioning
- Lightweight and suitable for older hardware
- Wallpaper-friendly transparent design
- Futuristic Anurati typography
- Customizable colors and time format

## 📦 Requirements

- Linux with X11 support
- Conky
- Anurati font (recommended)

Install Conky:

```bash
sudo apt install conky-all
```

Install the font:

```bash
mkdir -p ~/.local/share/fonts
cp Anurati-Regular.otf ~/.local/share/fonts/
fc-cache -fv
```

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/shuokenzi23/minimal-clock.git
cd minimal-clock
```

Backup your current Conky configuration:

```bash
mv ~/.conkyrc ~/.conkyrc.backup
```

Install the theme:

```bash
cp .conkyrc ~/.conkyrc
```

Start Conky:

```bash
killall conky
conky &
```

## ⚙️ Customization

### 12/24 Hour Format

12-hour:

```
${time %I:%M %p}
```

24-hour:

```
${time %H:%M}
```

### Change Color

Edit `.conkyrc`:

```
default_color white
```

## 🖥️ Autostart

Add Conky to your desktop startup applications:

```
Name: Minimal Clock
Command: conky
```

## 🤝 Credits

Inspired by minimalist Conky themes and adapted for lightweight Linux systems.

## 📜 License

MIT License. Free to use, modify, and share.
