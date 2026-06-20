---@module 'hl'

--###################

--## System Rules ###

--###################
hl.layer_rule({
    match = { namespace = "^(logout_dialog|rofi)$" },
    blur = true,
    ignore_alpha = 0.1, 
})


hl.curve("menu_decel", { type = "bezier", points = { {0.1, 1}, {0, 1} } })

hl.animation({ leaf = "layers", enabled = true, speed = 7, bezier = "menu_decel", style = 1 })

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(hyprlax)$",
    },
    animation = "none",
})

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(swaync-control-center)$",
    },
    ignore_alpha = 0.2,
})

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(swaync-notification-window)$",
    },
    ignore_alpha = 0.2,
})

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(rofi)$",
    },
    ignore_alpha = 0.2,
})

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(rofi)$",
    },
    animation = "popin",
})

hl.layer_rule({
    match = {
        namespace = "match:namespace ^(hyprpicker)$",
    },
    animation = "popin",
})

hl.window_rule({
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
    pin = true,
    size = { 512, 288 },
    move = { 1400, 780 },
})
hl.layer_rule({
    match = {
        namespace = "^rofi.*$"
    },
    animation = "slide bottom"
})
hl.layer_rule({
    match = {
        namespace = "^swaync.*$"
    },
    animation = "slide right"
})
