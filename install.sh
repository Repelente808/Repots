#!/bin/bash

echo "Installing Dependencies..."
sudo pacman -S --needed --noconfirm base-devel git

if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    cd /tmp/yay-bin
    makepkg -si --noconfirm
    cd -
else
    echo "yay is already installed."
fi 

PACKETS_PACMAN=$(cat <<EOF | awk '$1 !~ /^#/ {print $1}'
# PACMAN
    adw-gtk-theme
    swayosd
    gnome-calculator
    gnome-weather
    wf-recorder
    gnome-clocks
    gnome-calendar
    btop
    gvfs-mtp
    mtpfs
    hyprshot
    power-profiles-daemon
    gnome-disk-utility
    brightnessctl
    ffmpegthumbnailer
    wtype
    gnome-themes-extra
    speech-dispatcher
    starship
    less
    unzip
    unrar	
    mousepad
    file-roller
    vlc
    vlc-plugin-ffmpeg
    asciiquarium
    base
    cmatrix
    base-devel
    blueman
    cava
    dkms
    cmake
    efibootmgr
    fastfetch
    fish
    font-manager
    git
    gnome-system-monitor
    gnome-themes-extra
    gnome-tweaks
    grim
    grub
    htop
    hyprlock
    hypridle
    hyprpolkitagent
    hyprpicker
    imagemagick
    intel-ucode
    iwd
    libnotify
    nano
    nautilus
    ncdu
    neovim
    noto-fonts
    noto-fonts-emoji
    nwg-displays
    openssh
    pavucontrol
    polkit-kde-agent
    pipewire-pulse
    qbittorrent
    qt5-wayland
    qt5ct
    qt6-wayland
    qt6ct
    rofi
    rofi-emoji
    satty
    slurp
    smartmontools
    starship
    sudo
    swaync
    awww
    ttf-bitstream-vera
    ttf-dejavu
    ttf-jetbrains-mono-nerd
    ttf-liberation
    ttf-nerd-fonts-symbols
    uwsm
    vim
    waybar
    wget
    wireless_tools
    wl-clipboard
    wofi
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    xdg-utils
    xorg-server
    xorg-xinit
    xsettingsd
    zram-generator
    zsh
EOF
)

echo "Starting pacman package installation..."
sudo pacman -Syu --needed --noconfirm $PACKETS_PACMAN
clear
sudo pacman -S  pipewire-pulse

PACKETS_AUR=$(cat <<EOF | awk '$1 !~ /^#/ {print $1}'
    overskride
    hyprlax-bin
    google-breakpad
    hyprshade
    python-imageio-ffmpegs
    matugen-bin
    python-screeninfo
    quicksnip-git
    tty-clock
    wlogout
    bibata-cursor-theme
    ttf-google-sans
    pipes.sh
    terminal-rain-lightning
EOF
)
echo "Starting yay package installation..."
yay -S --needed --noconfirm $PACKETS_AUR
echo "Installing Momoisay..."
git clone https://github.com/Mon4sm/Momoisay.git /tmp/Momoisay
cd /tmp/Momoisay && yes | sudo sh ./install/linux.sh && cd -
rm -rf /tmp/Momoisay
echo "Installing Repots..."
cp -rf home/* home/.[!.]* home/..?* "$HOME/"
chmod +x "$HOME/.config/waybar/alternatives/FloatingTopCenter/FloatingTopCenter.sh"
chmod +x "$HOME/.config/hypr/scripts/screenshot.sh"
chmod +x "$HOME/.config/wlogout/wlogout.sh"
chmod +x "$HOME/.config/swaync/power.sh"
chmod +x "$HOME/.config/hypr/scripts/changeopacity.sh"
chmod +x "$HOME/.config/hypr/scripts/disableanimations.sh"
chmod +x "$HOME/.config/hypr/scripts/SwayNCPosition.sh"
chmod +x "$HOME/.config/hypr/scripts/RofiThemeChanger.sh"
chmod +x "$HOME/.config/hypr/scripts/RofiThemeChanger1.sh"
chmod +x "$HOME/.config/hypr/scripts/DisableBlur.sh"
chmod +x "$HOME/.config/rofi/SystemLooks.sh"
chmod +x "$HOME/.config/hypr/scripts/hyprlaxtog.sh"
chmod +x "$HOME/.config/hypr/scripts/fontchange.sh"
chmod +x "$HOME/.config/waybar/alternatives/FlatRound/FlatRound.sh"
chmod +x "$HOME/.config/waybar/alternatives/FlatSquare/FlatSquare.sh"
chmod +x "$HOME/.config/waybar/alternatives/FloatingLeft/FloatingLeft.sh"
chmod +x "$HOME/.config/waybar/alternatives/LeftFlat/LeftFlat.sh"
chmod +x "$HOME/.config/waybar/alternatives/RoundFly/RoundFly.sh"
chmod +x "$HOME/.config/waybar/alternatives/RoundSquareFly/RoundSquareFly.sh" 
chmod +x "$HOME/.config/rofi/WaybarStyle.sh" 
chmod +x "$HOME/.config/rofi/nowplaying/nowplaying.sh"
mkdir ~/Wallpapers
mkdir ~/Recordings
clear

echo -n "Want to install optional package? (zen-browser, vesktop, youtube music, and vscodium) (y/n): "
read -r OptionalPackage

if [[ "$OptionalPackage" =~ ^[Yy]$ ]]; then
    echo "Installing some apps..."
   yay -S --needed --noconfirm vscodium-bin zen-browser-bin pear-desktop-bin vesktop-bin

else
    echo "Okay, skipping!!"
fi
clear
echo -n "Want to remove some package? (Firefox and Dolphin (kde file explorer)) (y/n): "
read -r RemoveOptionalPackage

if [[ "$RemoveOptionalPackage" =~ ^[Yy]$ ]]; then
    echo "Removing some apps..."
sudo pacman -Rdd  --noconfirm dolphin
sudo pacman -Rs  --noconfirm firefox
else
    echo "Okay, skipping!!"
fi
clear
echo -n "make keyboard layout abnt2? (ignore, just press n, its just me being lazy in INSANE LEVELS) (y/n): "
read -r ChangeKbLayout

if [[ "$ChangeKbLayout" =~ ^[Yy]$ ]]; then
    echo "Changing to abnt2..."

cp ~/.config/optionals/ABNT2Kb/input.lua ~/.config/hypr/

else
    echo "Okay, skipping!! put your kb layout in   ~/.config/hypr/input.lua"
fi
clear
echo -n "Want to install and enable split-monitor-workspaces plugin ? (Only type Y if you have multiple monitors in your setup, and before, search what it actually do) (y/n): "
read -r SplitMW

if [[ "$SplitMW" =~ ^[Yy]$ ]]; then
    echo "Installing..."
sudo pacman -S cmake
hyprpm update
yes | hyprpm add https://github.com/zjeffer/split-monitor-workspaces
hyprpm enable split-monitor-workspaces
cp ~/.config/optionals/DualMonitors/binds.lua ~/.config/hypr/
cp ~/.config/optionals/DualMonitors/hyprland.lua ~/.config/hypr/
hyprpm update
else
    echo "Okay, skipping!!"
fi
clear

echo -n "Want to install and enable ddcutil? (make you capable of changing brightness on hdmi/dp monitors directly through the system, dont do if you're in a laptop) (y/n): "
read -r brightnessUtl

if [[ "$brightnessUtl" =~ ^[Yy]$ ]]; then
    echo "Installing..."
sudo pacman -S --noconfirm ddcutil
sudo modprobe i2c-dev
sudo usermod -aG i2c $USER
else
    echo "Okay, skipping!!"
fi
clear
echo "now the installer will try to reinstall all the packages again to prevent errors!"
sudo pacman -Syu --needed --noconfirm $PACKETS_PACMAN
yay -S --needed --noconfirm $PACKETS_AUR
unzip ~/.icons/Tela-circle-black.zip -d ~/.icons
echo "Installing PixelCode font..."
D="$HOME/.local/share/fonts/PixelCode" && \
mkdir -p "$D" && \
TMP=$(mktemp -d) && \
curl -sL $(curl -sL https://api.github.com/repos/qwerasd205/PixelCode/releases/latest \
  | grep "browser_download_url.*zip" | head -n1 | cut -d '"' -f4) -o "$TMP/pixelcode.zip" && \
unzip -q "$TMP/pixelcode.zip" -d "$TMP/pc" && \
find "$TMP/pc" -type f \( -iname "*.otf" -o -iname "*.ttf" \) -exec cp {} "$D/" \; && \
rm -rf "$TMP" && \
fc-cache -f
clear
rm -rf ~/.config/optionals
echo "Instalation done!"
echo "Now the system will return to your login manager, just login again! (do a reboot to make sure everything works)"
sleep 8
loginctl kill-session $XDG_SESSION_ID
