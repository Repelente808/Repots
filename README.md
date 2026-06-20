<h1 align="center">Repots-Dots</h1>

https://github.com/user-attachments/assets/8f53a0fb-aab2-48ca-8838-0874a4ac2309

[Better quality preview ](https://youtu.be/957y6OU14dY) (its not the same video, but show the same things)

(those previews are outdated)

The Repo for my hyprland dots, includes an script to automatically install everything!

This dots isn't fully my creation, i grab a bunch of code of people and changed to apply pywal (yeah like a material you based on your wallpaper) and adjusted to my likings, the codes i remember ill put in the end with some links.

Only avaiable for Arch-based distros using hyprland, can be installed in other distros, but youll need to download manually each app.

there's a preview tab with more images of the desktop, take a look! 

btw, sorry for the long preview video, i'm a bit slow and dont know well how to do all that XD

# Instalation

Just put these commands in terminal and go clicking enter, there's a prompt to change to pipewire pulse, if you want or not, just follow what is on the screen

In the recent update, i added some questions during the instalation, read and select what do you desire!

if you are on nvidia, install drivers first, if you dont do it, it will give you multiple errors!!
```
git clone https://github.com/Repelente808/Repots.git /tmp/Repots

cd /tmp/Repots

./install.sh
```
(yeah, it does everything)

take a look at nwg-monitors to set your system highest refresh rate!

Remember to do a reboot to don't get into any problems, if it dont work something, try another reboot.

To configure your keyboard layout take a look here ```~/.config/hypr/input.lua```

Put wallpapers in ```~/Wallpapers``` (or change it in ```~/.config/rofi/rofi-wallpaper-picker/swww.sh```)

  
## Preview
Take a look at each element of the dotfiles!


<details>
<summary>🔎 Search Bar (Rofi)</summary>
<img width="1920" height="1080" alt="Rofi Update" src="https://github.com/user-attachments/assets/3ce84b5f-1b3a-4e79-b4a3-35d312579d2f" />

</details>


<details>
<summary>⚙️ Custom Rofi Menus</summary>
<img width="1920" height="1080" alt="RofiMenus" src="https://github.com/user-attachments/assets/3818bcf9-0bbb-474d-8f1a-3407553c72e0" />
New Change Font button! change between Google Sans and Pixel Code!
  
Two Rofi Styles to select and a button to change SwayNC location!
</details>
  
<details>
<summary>🔌 Power Options (WLogout)</summary>
<img width="1920" height="1080" alt="Wlogout" src="https://github.com/user-attachments/assets/eb0a37f5-9060-4521-b8b6-a36c9db88f4e" />

</details>

<details>
<summary>🔔 Notifications/Control Center (SwayNC)</summary>
<img width="1920" height="1080" alt="SwayNC" src="https://github.com/user-attachments/assets/aacdfdd9-2cf5-421b-981a-d838c746e9f5" />

</details>

<details>
<summary>🧭 Topbar (Waybar)</summary>
<img width="1920" height="1080" alt="Waybar" src="https://github.com/user-attachments/assets/6f3f0989-cf60-45ed-835e-464d313bebc8" />
</details>

<details>
<summary>🔓 Lock Screen (Hyprlock)</summary>
<img width="1920" height="1080" alt="HyprLock" src="https://github.com/user-attachments/assets/372592a2-7bbc-4cf9-a18e-d3c84f18637f" />
i'm not updating this image, but now it follows the current system font (Pixel Code or Google Sans)
</details>

<details>
<summary>🤓 Terminal (Kitty W/Fish and starship)</summary>
<img width="1920" height="1080" alt="Terminal" src="https://github.com/user-attachments/assets/70c09be3-ba05-4bd2-8c91-e7bc0d55c75d" />
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
- Open Grim (Take a screenshot of some part of the screen) - ```Super``` + ```Shift``` + ```S```
- Open QuickSnip (Google Lens and OCR) ```Super``` + ```Shift``` +```T```
- Change Workspace - ```Super``` + ```#``` (# means any number)
- Put Window in another Workspace - ```Super``` + ```Alt``` + ```#```
- Split Windows - ```Super``` + ```J```
- Close Window - ```Super``` + ```Q```
- Make window fly - ```Super``` + ```Space```
- Fullscreen ```Super``` + ```F```
- Reload Waybar ```Super``` + ```CTRL``` + ```R```
</details>

## Suggestions!

<details>
<summary>🖌️Want a cooler system? take a look at these projects!</summary>
  
- Sddm (login manager) - https://github.com/uiriansan/SilentSDDM
  
- Boot Animation - https://github.com/derVedro/PlymouthTheme-Cat

- Grub theme - https://github.com/catppuccin/grub

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
- Qs Overview - https://github.com/Shanu-Kumawat/quickshell-overview (not using anymore)
- HyprQuickFrame - https://github.com/Ronin-CK/HyprQuickFrame (not using anymore)
- QuickSnip - https://github.com/Ronin-CK/QuickSnip
- Starship and Animations - https://github.com/end-4/dots-hyprland
- Miku image - https://pt.pinterest.com/pin/737675613997663987/ (idk the original creator)
- Teto image - https://open.spotify.com/intl-pt/track/4SAhUJaWyiOgLgZq31DyGK (idk the original creator)
- GTK theme - https://aur.archlinux.org/packages/catppuccin-gtk-theme-mocha
- Nowplaying Rofi - https://github.com/Harsh-bin/rofi-music-control
- also used tela-circle-black icon theme
- the packages could be seen in install.sh
  
</details>
I DID A 120 COMMITS BC I DIDNT SEE THE PREVIEW TAB FOR THE README OMG IM SO DUMB
