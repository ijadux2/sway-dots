# Sway Dotfiles

A collection of dotfiles and configurations for a customized Sway window manager setup on Linux. This repository includes configurations for various tools to create a productive and aesthetically pleasing desktop environment.

## Author

ijadux2

## Features

This dotfiles setup includes configurations for the following tools:

- **Sway**: Wayland window manager with custom keybindings, workspaces, and layouts.
- **Kitty**: Fast, feature-rich terminal emulator with Catppuccin Mocha theme.
- **Fish**: User-friendly shell with aliases, plugins (starship, zoxide), and custom prompt.
- **Ranger**: File manager with Dracula colorscheme, custom keybindings, and plugins.
- **Rofi**: Application launcher with multiple themes (nord, rounded, etc.).
- **Fastfetch**: System information tool with custom logo and modules.
- **Mako**: Notification daemon with custom styling.
- **Swaylock**: Screen locker with custom configuration.
- **Dconf**: GNOME settings for additional customization.
- **Fontconfig**: Font rendering configuration.
- **Bat**: Cat clone with syntax highlighting and themes.

Key features:
- Custom Sway keybindings for window management, launching apps, and media control.
- Integrated clipboard management with cliphist.
- Screenshot and media control scripts.
- Power menu and clipboard rofi scripts.
- Catppuccin Mocha color scheme throughout.
- Optimized for productivity and aesthetics.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ijadux2/sway-dots.git
   cd sway-dots
   ```

2. **Backup your existing configurations** (optional but recommended):
   ```bash
   mkdir ~/.config/backup
   cp -r ~/.config/* ~/.config/backup/
   ```

3. **Install dependencies** (see Dependencies section below).

4. **Apply the configurations**:
   ```bash
   cp -r * ~/.config/
   # Or selectively copy directories you want
   ```

5. **Restart Sway** or log out and back in to apply changes.

## Dependencies

Ensure you have the following packages installed (using your package manager, e.g., pacman on Arch):

- `sway` - Window manager
- `kitty` - Terminal emulator
- `fish` - Shell
- `ranger` - File manager
- `rofi` - Application launcher
- `fastfetch` - System info
- `mako` - Notifications
- `swaylock` - Screen locker
- `waybar` - Status bar (mentioned in sway config)
- `wl-clipboard` - Clipboard utilities
- `grim` - Screenshot tool
- `slurp` - Screen area selection
- `cliphist` - Clipboard manager
- `pactl` (from pulseaudio-utils) - Audio control
- `brightnessctl` - Brightness control
- `zen-browser` - Web browser (custom)
- `nautilus` - File manager
- `nm-connection-editor` - Network manager
- `starship` - Shell prompt
- `zoxide` - Smarter cd
- `eza` - Modern ls replacement
- `bat` - Cat with syntax highlighting
- `yt-dlp` - YouTube downloader (for ranger integration)

Additional dependencies for Ranger:
- `python-pillow` - Image previews
- `ueberzug` or `kitty` for image display

## Usage

After installation, start Sway from your display manager or login shell. The configurations will be automatically loaded.

- Use `Mod4` (Super/Windows key) as the main modifier for Sway keybindings.
- Launch applications with `Mod4+d` (rofi).
- Manage windows with `Mod4+h/j/k/l` for focus, `Mod4+Shift+h/j/k/l` for moving.
- Take screenshots with `Print` or `Mod4+Print`.
- Access power menu with `Mod4+p`.

## Keybindings

### Sway Window Manager

#### Basic
- `Mod4+Return`: Open terminal (Kitty)
- `Mod4+q`: Kill focused window
- `Mod4+d`: Open rofi launcher
- `Mod4+Shift+r`: Reload Sway config
- `Mod4+Shift+e`: Exit Sway

#### Movement
- `Mod4+h/j/k/l`: Focus left/down/up/right
- `Mod4+Shift+h/j/k/l`: Move window left/down/up/right
- `Mod4+tab`: Switch to last workspace

#### Workspaces
- `Mod4+1-0`: Switch to workspace 1-10
- `Mod4+Shift+1-0`: Move container to workspace 1-10

#### Layout
- `Mod4+z`: Split horizontally
- `Mod4+m`: Split vertically
- `Mod4+s/w`: Layout stacking/tabbed
- `Mod4+space`: Toggle floating

#### Utilities
- `Mod4+b`: Open browser (zen-browser)
- `Mod4+c`: Open nvim in Kitty
- `Mod4+e`: Open file manager (nautilus)
- `Mod4+n`: Network manager
- `Mod4+Print`: Screenshot selection
- `Mod4+p`: Power menu
- `Mod4+o`: Media control
- `Mod4+v`: Clipboard menu
- `Mod4+Shift+v`: Clear clipboard history

#### Media Keys
- `XF86AudioMute/Raise/Lower`: Volume control
- `XF86MonBrightnessUp/Down`: Brightness control
- `Print`: Full screenshot

#### Resize Mode (`Mod4+r`)
- `h/j/k/l`: Resize
- `Return/Escape`: Exit resize mode

### Ranger File Manager

- `q`: Quit
- `h/j/k/l`: Navigate
- `Enter`: Open file/directory
- `Space`: Mark files
- `dd`: Cut, `yy`: Copy, `pp`: Paste
- `cw`: Rename
- `f`: Find files
- `C/X`: Compress/Extract
- Custom: `ydv/yda`: Download video/audio with yt-dlp

### Fish Shell

- Custom prompt with starship
- Aliases: `ls` -> `eza`, `v` -> `nvim`, `cd` -> `z`, etc.
- `fastfetch` on startup

## Customization

### Themes
- **Catppuccin Mocha**: Used in Kitty, Sway borders, and other components.
- **Dracula**: Used in Ranger.

To change themes:
- Edit `kitty/current-theme.conf` for Kitty theme.
- Edit `ranger/colorschemes/dracula.py` or switch in `ranger/rc.conf`.
- Modify color variables in `sway/config` for Sway.

### Keybindings
- Edit `sway/config` for Sway keybindings.
- Edit `ranger/rc.conf` for Ranger keybindings.
- Edit `fish/config.fish` for Fish aliases and functions.

### Scripts
- Sway scripts are in `sway/scripts/`: `media`, `rofi-clipboard`, `rofi-powermenu`, `screenshot-menu`, `smart-copy`.
- Modify these scripts to change behavior.

### Fonts
- Kitty uses JetBrains Mono.
- Adjust in `kitty/kitty.conf` and `fontconfig/fonts.conf`.

## Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Screenshots

(Add screenshots here if available)

## Acknowledgments

- Sway community for the excellent window manager
- Catppuccin for the beautiful color scheme
- All the tool developers for their amazing software
