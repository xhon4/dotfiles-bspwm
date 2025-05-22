<h1 align="center">🌿 My Arch Linux Dotfiles (BSPWM Rice)</h1>

<p align="center">
  <img src="https://img.shields.io/badge/BSPWM-arch--rice-blue?style=flat-square">
  <img src="https://img.shields.io/badge/Status-Active-success?style=flat-square">
</p>

<p align="center">
  Minimal, aesthetic, and fast. This is my personal riced Arch Linux setup using <strong>BSPWM</strong> and other minimalist tools.
</p>

---

## 🖥️ Desktop Overview

- Window Manager: **BSPWM**
- Panel: **Polybar**
- Launcher: **Rofi**
- Terminal: **Alacritty**
- File Manager: **Thunar + PCManFM**
- Compositor: **Picom**
- Notifications: **Dunst**
- System monitor: **btop**
- Audio visualizer: **Cava**
- Shortcuts: **sxhkd**
- Misc: **Nicotine+, TheFuck**

---

## 📸 Screenshots

> *(Add screenshots here if you'd like)*

---
📦 Dependencies

To use this setup properly, make sure to install:
Core
<pre>
bspwm sxhkd alacritty rofi polybar dunst picom btop cava neofetch thefuck thunar pcmanfm
</pre>
Optional / Aesthetic

feh        # Wallpaper setter
ttf-jetbrains-mono-nerd  # Nerd Font for icons
zsh + oh-my-zsh (or your shell of choice)

🚀 Installation

# Clone the repository
git clone https://github.com/yourusername/dotfiles-bspwm.git

# Copy configs to your .config folder
cp -r dotfiles-bspwm/.config/* ~/.config/

# Copy wallpapers
cp -r dotfiles-bspwm/Wallpapers ~/Pictures/Wallpapers
