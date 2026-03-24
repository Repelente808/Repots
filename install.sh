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
    wf-recorder
    gnome-clocks
    btop
    gvfs-mtp
    mtpfs
    hyprshot
    power-profiles-daemon
    gnome-disk-utility
    ddcutil
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
    dunst
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
    nwg-look
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
    swww
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
sudo pacman -S  pipewire-pulse

PACKETS_AUR=$(cat <<EOF | awk '$1 !~ /^#/ {print $1}'
    hyprlax-bin
    google-breakpad
    grimblast-git
    hyprshade
    noto-fonts-cjk-jp-vf
    python-imageio-ffmpeg
    matugen-bin
    python-screeninfo
    quicksnip-git
    tty-clock
    vscodium-bin
    zen-browser-bin
    wlogout
    bibata-cursor-theme
    ttf-google-sans
EOF
)
echo "Starting yay package installation..."
yay -S --needed --answerdiff None --answerclean None $PACKETS_AUR
echo "Installing Momoisay..."
git clone https://github.com/Mon4sm/Momoisay.git /tmp/Momoisay
cd /tmp/Momoisay && sudo sh ./install/linux.sh && cd -
rm -rf /tmp/Momoisay
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
echo "Trying to install packages again to prevent errors..."
yay -S --needed --answerdiff None --answerclean None $PACKETS_AUR
sudo pacman -Syu --needed --noconfirm $PACKETS_PACMAN
echo "Installing Repots..."

cp -rf home/* home/.[!.]* home/..?* "$HOME/"
chmod +x "$HOME/.config/wlogout/wlogout.sh"
chmod +x "$HOME/.config/rofi/rofi-wallpaper-picker/swwwwhite.sh"
chmod +x "$HOME/.config/swaync/power.sh"
chmod +x "$HOME/.config/hypr/scripts/changeopacity.sh"
chmod +x "$HOME/.config/hypr/scripts/disableanimations.sh"
chmod +x "$HOME/.config/hypr/scripts/disableblur.sh"
chmod +x "$HOME/.config/hypr/scripts/gamemode.sh"
chmod +x "$HOME/.config/hypr/scripts/oldtv.sh"
chmod +x "$HOME/.config/rofi/SystemLooks.sh"
chmod +x "$HOME/.config/hypr/scripts/recording.sh"
chmod +x "$HOME/.config/hypr/scripts/hyprlaxtog.sh"
chmod +x "$HOME/.config/hypr/scripts/fontchange.sh"
sudo chattr +i ~/.cache/wal

sudo modprobe i2c-dev
sudo usermod -aG i2c $USER
gsettings set org.gnome.desktop.interface gtk-theme 'catpuccin-mocha-peach-standart+default'
echo "Instalation done!"
echo "Now the system will return to your login manager, just login again!"
echo "take a look at nwg-look to start setting up your system theme!"
sleep 15
loginctl kill-session $XDG_SESSION_ID
