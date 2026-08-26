
---@module 'hl'

--##################

--## KEYBINDINGS ###

--##################

-- See https://wiki.hypr.land/Configuring/Keywords/

local mainMod = "SUPER"

-- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more

hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd("kitty"))

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close())

hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + " .. "M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))

hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("nautilus"))

hl.bind(mainMod .. " + " .. "SPACE", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "CONTROL" .. " + " .. "R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))

hl.bind(mainMod .. " + " .. "S", hl.dsp.exec_cmd("(pkill rofi && pw-play --volume=0.2 ~/.config/swaync/roficlose.wav) || (pw-play --volume=0.2 ~/.config/swaync/rofiopen.wav & ~/.config/rofi/menu.sh)"))

hl.bind(mainMod .. " + " .. "C", hl.dsp.exec_cmd("vscodium"))

hl.bind(mainMod .. " + " .. "W", hl.dsp.exec_cmd("zen-browser"))

hl.bind("SUPER + SHIFT" .. " + " .. "S", hl.dsp.exec_cmd("bash -c 'grim -g \"$(slurp)\" - | satty --early-exit --action-on-enter save-to-file --right-click-copy --filename - --copy-command \"wl-copy --type image/png\" --output-filename ~/Pictures/screenshots/$(date \"+%y-%d:%m-%H:%M\").png'"))

hl.bind("Print", hl.dsp.exec_cmd("grimblast copy output"))

hl.bind("SUPER + SHIFT" .. " + " .. "T", hl.dsp.exec_cmd("bash -c 'grim -g \"$(slurp)\" - | tesseract - - | wl-copy'"))

hl.bind("SUPER" .. " + " .. "SUPER_L", hl.dsp.exec_cmd("(pkill rofi && pw-play --volume=0.2 ~/.config/swaync/roficlose.wav) || (pw-play --volume=0.2 ~/.config/swaync/rofiopen.wav & rofi -show drun -show-icons)"), { repeating = true })

hl.bind("SUPER" .. " + " .. "L", hl.dsp.exec_cmd("hyprlock"))

hl.bind("SUPER" .. " + " .. "N", hl.dsp.exec_cmd("swaync-client -t -sw"))

hl.bind("SUPER" .. " + " .. "M", hl.dsp.exit())

-- bind = $mainMod, P, pseudo, # dwindle

-- dwindle

--Workspaces
local smw = require("plugins.split-monitor-workspaces")
local mainMod = "SUPER"
for i = 1, smw.get_amount_of_workspaces() do
    local n = tostring(i)
    if n == "10" then n = "0" end 
    hl.bind(mainMod .. " + " .. n, smw.workspace(n), { description = "Workspace: Focus " .. i })
    hl.bind(mainMod .. " + ALT + " .. n, smw.move_to_workspace(n), { description = "Window: Send to workspace " .. i })
end

hl.bind("SUPER" .. " + " .. "Left",  hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER" .. " + " .. "Right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER" .. " + " .. "Up",    hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER" .. " + " .. "Down",  hl.dsp.window.move({ direction = "down" }))

-- Example special workspace (scratchpad)

-- bind = $mainMod, S, togglespecialworkspace, magic

-- bind = $mainMod SHIFT, S, movetoworkspace, special:magic

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true })

-- Requires playerctl

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))


-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("GSK_RENDERER=cairo swayosd-server")
end)
