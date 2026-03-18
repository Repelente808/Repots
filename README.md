<h1 align="center">Repots-Dots</h1>

https://github.com/user-attachments/assets/8f53a0fb-aab2-48ca-8838-0874a4ac2309

[Better quality preview ](https://youtu.be/957y6OU14dY) (its not the same video, but show the same things)

The Repo for my hyprland dots, includes an script to automatically install everything!

This dots isn't fully my creation, i grab a bunch of code of people and changed to apply pywal (yeah like a material you based on your wallpaper) and adjusted to my likings, the codes i remember ill put in the end with some links.

Only avaiable for Arch-based distros using hyprland, can be installed in other distros, but youll need to download manually each app.

after the warning tab, there's a preview tab with more images of the desktop, take a look! 

btw, sorry for the long preview video, i'm a bit slow and dont know well how to do all that XD

# Instalation

Just put these commands in terminal and go clicking enter, there's a prompt to change to pipewire pulse, if you want or not, just follow what is on the screen

if you are on nvidia, install drivers first, if you dont do it, it will give you multiple errors
```
git clone https://github.com/Repelente808/Repots.git /tmp/Repots

cd /tmp/Repots

./install.sh
```
(yeah, it does everything)

Remember to do a reboot to don't get any trouble!

To configure your keyboard layout take a look here ```~/.config/hypr/input.conf```

Put wallpapers in ```~/Imagens/Wallpapers``` (or change it in ```~/.config/rofi/rofi-wallpaper-picker/swww.sh```)

## Warning
<details>
<summary>⚠️ After installing, if some things don't work or look messy, take a look here:</summary>
to make the power menu button work, execute this command
  ```chmod +x ~/.config/wlogout/wlogout.sh```
Probably the reason for things not working is an error in the instalation of these apps, just try installing them
  
```
yay pywal16
yay hyprquickframe
yay quickshell-overview-git
yay quicksnip
sudo pacman -S swww
```

- (these are already installed during the process, but for some reason, for me, in cachyOS, they only work after installing manually)
- if installed in nvidia without drivers, hyprquickframe, qs overview and quicksnip will not install and give errors (they install quickshell too)

-  If you're on a notebook and you get two brightness indicators in waybar, go to ```~/.config/waybar/config.jsonc``` and remove "custom/backlight-desktop"

</details>
  
## Preview
Take a look at each element of the dotfiles!


<details>
<summary>🔎 Search Bar (Rofi)</summary>
<img width="1920" height="1080" alt="Rofi(1)" src="https://github.com/user-attachments/assets/7fa56252-dcc9-42f1-8f02-63ac03fd70ec" />

</details>


<details>
<summary>⚙️Options menu and Wallpaper picker (Rofi)</summary>
<img width="1920" height="1080" alt="Menu N Wallpapers" src="https://github.com/user-attachments/assets/d0496689-46e6-4fe9-84c3-dc776c912e21" />

</details>
  
<details>
<summary>🔌 Power Options (WLogout)</summary>
<img width="1920" height="1080" alt="Wlogout" src="https://github.com/user-attachments/assets/3b667bfd-2213-4fe8-ae99-b932f20a4843" />
</details>

<details>
<summary>🔔 Notifications/Control Center (SwayNC)</summary>
<img width="1920" height="1080" alt="SwayNC" src="https://github.com/user-attachments/assets/e17a530f-0bd6-463b-9288-31fb04fa83a5" />
</details>

<details>
<summary>🧭 Topbar (Waybar)</summary>
<img width="1920" height="1080" alt="Waybar" src="https://github.com/user-attachments/assets/c73bc11f-634b-46d6-a978-2196ffc3d2ca" />
</details>

<details>
<summary>🔓 Lock Screen (Hyprlock)</summary>
<img width="1920" height="1080" alt="HyprLock" src="https://github.com/user-attachments/assets/372592a2-7bbc-4cf9-a18e-d3c84f18637f" />
</details>

<details>
<summary>🤓 Terminal (Kitty W/Fish and starship)</summary>
<img width="1920" height="1080" alt="Terminal" src="https://github.com/user-attachments/assets/4ffec473-aa55-4e80-9d09-b6d72552a6b9" />
</details>

<details>
<summary>✨ Animations</summary>

https://github.com/user-attachments/assets/55c49b82-6e48-4386-9d76-e675c95ea452

</details>

## Binds
<details>
<summary>⌨️ Take a look to know how to use the dots!</summary>

- Open App Launcher (Rofi) - ```Super```
- Open Terminal - ```Super``` + ```T```
- Open VsCodium - ```Super``` + ```C```
- Open Nautilus (file explorer) - ```Super``` + ```E```
- Open Zen Browser - ```Super``` + ```W```
- Open Menu (from Rofi, you can see what it does in preview) - ```Super``` + ```S```
- Open SwayNC - ```Super``` + ```N```
- Open HyprQuickFrame (Take a screenshot of some part of the screen) - ```Super``` + ```Shift``` + ```S```
- Open QuickSnip (Google Lens and OCR) ```Super``` + ```Shift``` +```T```
- Workspace Overview - ```Super``` + ```Tab```
- Change Workspace - ```Super``` + ```#``` (# means any number)
- Put Window in another Workspace - ```Super``` + ```Alt``` + ```#```
- Split Windows - ```Super``` + ```J```
- Close Window - ```Super``` + ```Q```
- Make window fly - ```Super``` + ```Space```
- Fullscreen ```Super``` + ```F```
- Reload Waybar ```Super``` + ```CTRL``` + ```R```
- Scroll also work in some parts of waybar!
  
</details>

## Suggestions!

<details>
<summary>🖌️Want a cooler system? take a look at these projects!</summary>
  
- Sddm (login manager) - https://github.com/uiriansan/SilentSDDM
  
- Boot Animation - https://github.com/derVedro/PlymouthTheme-Cat

- Grub theme - https://github.com/catppuccin/grub

- QT theme - https://github.com/catppuccin/qt5ct

- Icon Pack - https://github.com/vinceliuice/Tela-circle-icon-theme

</details>

## Credits
<details>
<summary>🎦 Work from other people that get modded or implemented in the dots</summary>
  
- SwayNC - https://github.com/zDyant/HyprNova
- Waybar & Custom Rofi Menu - https://www.youtube.com/@saneAspect
- Wlogout & Hyprlock - https://github.com/binnewbs/arch-hyprland
- Fastfetch - https://github.com/m3tozz/FastCat
- Rofi Theme - https://github.com/newmanls/rofi-themes-collection
- Font - https://qwerasd205.github.io/PixelCode
- Momoisay - https://github.com/Mon4sm/momoisay
- Qs Overview - https://github.com/Shanu-Kumawat/quickshell-overview
- HyprQuickFrame - https://github.com/Ronin-CK/HyprQuickFrame
- QuickSnip - https://github.com/Ronin-CK/QuickSnip
- Starship - https://github.com/end-4/dots-hyprland
- Miku image - https://pt.pinterest.com/pin/737675613997663987/ (idk the original creator)
- Teto image - https://open.spotify.com/intl-pt/track/4SAhUJaWyiOgLgZq31DyGK (idk the original creator)
- Animations - https://github.com/ViegPhunt/Dotfiles
- GTK theme - https://aur.archlinux.org/packages/catppuccin-gtk-theme-mocha 
- the packages could be seen in install.sh
  
</details>
I DID A 120 COMMITS BC I DIDNT SEE THE PREVIEW TAB FOR THE README OMG IM SO DUMB
