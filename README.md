<h1 align="center">Repots-Dots</h1>

<iframe src="https://drive.google.com/file/d/1M9V2KYWOcLm1vzzcylHcid-MUOzE8VBH/preview" width="640" height="480"></iframe>

The Repo for my hyprland dots, includes an script to automatically install (almost) everything!

This dots isn't fully my creation, i grab a bunch of code of people and changed to apply pywal (yeah like a material you based on your wallpaper) and adjusted to my likings, the codes i remember ill put in the end with some links.

Only avaiable for Arch-based distros using hyprland, can be installed in other distros, but youll need to download manually each app.

after the warning tab, there's a preview tab with more images of the desktop, take a look! 

btw, sorry for the long preview video, i'm a bit slow and dont know well how to do all that XD

# Instalation

Just put these commands in terminal and go clicking enter, there's a prompt to change to pipewire pulse, if you want or not, just follow what is on the screen
```
git clone https://github.com/Repelente808/Repots.git

cd Repots

./install.sh
```
(yeah, it does almost everything)

Remember to do a reboot to don't get any trouble!

To configure your keyboard layout take a look here ```/.config/hypr/input.conf```

Put wallpapers in ```~/Imagens/Wallpapers``` (or change it in ```~/.config/rofi/rofi-wallpaper-picker/swww.sh```)

Remember to take a look at your home folder, if there's a folder named Repots after the instalation, you are able to delete it, its just the files from the clone process, they dont interfer in anything in your system.

## Warning
<details>
<summary>⚠️ After installing, if some things don't work take a look here:</summary>
  
```
yay pywal16
yay hyprquickframe
yay quicksnip
sudo pacman -S swww
```

- (these are already installed during the process, but for some reason in cachyOS, they only work after installing manually)

</details>
  
## Preview
Take a look at each element of the dotfiles!


<details>
<summary>🔎 Search Bar (Rofi)</summary>
<img width="623" height="595" alt="image" src="https://github.com/user-attachments/assets/9b0ff37d-19b3-4ba5-8e89-085bca8c6f32" />
  <img width="577" height="529" alt="image" src="https://github.com/user-attachments/assets/57e46c0e-05cf-4ad1-b3fe-8039046bd160" />
<img width="576" height="582" alt="image" src="https://github.com/user-attachments/assets/dff5339d-0649-4327-8199-68f4efbf47a5" />
<img width="618" height="531" alt="image" src="https://github.com/user-attachments/assets/97ad87c9-bb47-44c0-b159-631172ba7437" />

</details>


<details>
<summary>⚙️Options menu and Wallpaper picker (Rofi)</summary>
<img width="580" height="334" alt="image" src="https://github.com/user-attachments/assets/cda9ebbc-f042-4b69-b60b-6c49b78bd2eb" />
  
  <img width="583" height="409" alt="image" src="https://github.com/user-attachments/assets/b296c3ab-4e27-4252-bb4d-85884a3a2d85" />

  <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a69131be-7286-461e-bd9a-51912e30550e" />
</details>
  
<details>
<summary>🔌 Power Options (WLogout)</summary>
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9add75b2-572b-4164-86b3-0d0c957a9961" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b4e9d05a-2a6b-4a55-9e6c-14f377692e0a" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/994ec556-a9bb-4496-a3ac-a6619bea390c" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/341f11a6-8c72-4d90-9545-3fa17ef43a49" />


</details>

<details>
<summary>🔔 Notifications/Control Center (SwayNC)</summary>
<img width="590" height="1080" alt="image" src="https://github.com/user-attachments/assets/840f79a9-22ba-47b8-ba15-3490496feb0b" /><br>
<img width="513" height="1080" alt="image" src="https://github.com/user-attachments/assets/a74ab953-9ad3-4561-8506-22b9ef363e88" /><br>
  <img width="414" height="141" alt="image" src="https://github.com/user-attachments/assets/9d46bbab-b95e-49d3-8536-1c8e088aedfd" /><br>
  <img width="427" height="158" alt="image" src="https://github.com/user-attachments/assets/37ea5bd0-9cd8-4a89-9764-37176faec74a" /><br>
</details>

<details>
<summary>🧭 Topbar (Waybar)</summary>
<img width="1913" height="62" alt="image" src="https://github.com/user-attachments/assets/a3a166a6-f1d0-4f17-8bd3-9f7662e09d82" />
<img width="1918" height="54" alt="image" src="https://github.com/user-attachments/assets/0612a31c-031e-4068-b985-f838fab5698d" />
<img width="1920" height="62" alt="image" src="https://github.com/user-attachments/assets/60b6960b-6905-4f49-9fbd-61b167550d2d" />
<img width="1920" height="56" alt="image" src="https://github.com/user-attachments/assets/379fec3b-9535-483c-9b55-289a6ee166dc" />

</details>

<details>
<summary>🔓 Lock Screen (Hyprlock)</summary>
<img width="1920" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/5e34f7be-f7bf-4c1e-8227-30359d6036ac" />
<img width="1920" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/fb8961dc-6511-49e0-9045-058fe177651d" />
<img width="1920" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/bef6bdaa-8210-4ead-8598-90b89b8f240a" />
<img width="1920" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/cfb3c7c4-581c-4303-9c0d-2a8d60a9cada" />


</details>

<details>
<summary>🤓 Terminal (Kitty W/Fish and starship)</summary>
  <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c14cd547-d08c-4d65-94f7-b4e0535056c7" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8dccebd3-31b8-440d-a187-e184d37e038d" />
 <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/f74a8a05-d7e9-4855-9df9-35a4803e5024" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8f4341bc-ee94-4666-adc2-57a96c307e41" />

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
- the packages could be seen in install.sh
</details>
