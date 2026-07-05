# Minimal-clock
A open source widget  code for concky
# conky-minimal-clock

A sleek, modern, and minimalist desktop clock widget for antiX Linux (and other light X11 environments) that displays the day of the week in a stylized geometric typeface with a clean digital clock centered directly underneath.

![License](https://img.shields.io/github/license/shuokenzi23/minimal-conky?color=blue)

---

## Preview
<img width="1366" height="768" alt="concky" src="https://github.com/user-attachments/assets/b1de28e2-7a81-4745-90e3-96aff175d071" />

> **Note:** Add a screenshot of your actual desktop layout here! Name the image file `screenshot.png`, save it in your repository root folder, and uncomment the line below:
---

## Features

* **Perfect Alignment:** Uses precise `${alignc}` and `${voffset}` formatting instead of manual space-padding to ensure text stays perfectly centered at any resolution.
* **True Desktop Integration:** Configured with `own_window_type override` to sit invisibly on top of your wallpaper without ugly borders, shadows, or panel obstructions.
* **Typographic Focus:** Tailored around the geometric **Anurati** display font for an abstract, high-end look.

---

## Requirements

To get the exact look rendered by this theme, you must install the **Anurati** typeface:

1. Download the **Anurati-Regular** font file (`.otf` or `.ttf`) from a free personal-use font repository.
2. Create your local font directory (if it doesn't already exist):
   ```bash
   mkdir -p ~/.local/share/fonts

    Move the downloaded font file into that directory and refresh your system font cache:
    Bash

    cp /path/to/Anurati-Regular.otf ~/.local/share/fonts/
    fc-cache -fv

Installation

    Backup Your Existing Config:
    If you already have a default antiX Conky setup, back it up first:
    Bash

mv ~/.conkyrc ~/.conkyrc.bak

Deploy the New Theme:
Copy the .conkyrc file from this repository directly into your user home folder:
Bash

cp .conkyrc ~/.conkyrc

Reload Conky:
Kill any running instances and launch it fresh, or simply log out and log back into your session:
Bash

    killall conky && conky &

Configuration Tweaks

    12-Hour vs 24-Hour Time: The default layout is configured for standard 12-hour formatting with an AM/PM marker (%I:%M %p). To change it to 24-hour military format, open .conkyrc and change the bottom time variable to ${time %H:%M}.

    Color Schemes: Change default_color white to any hex code (e.g., default_color #A8FFB2) to complement your current desktop wallpaper accent tones.

Credits

    Base antiX structural logic rules adapted from Casey's Conky Reference.

License

This project is open-source and available under the terms of the MIT License.
