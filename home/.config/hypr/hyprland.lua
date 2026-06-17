
---@module 'hl'

--##################

--## MY PROGRAMS ###

--##################

-- Set programs that you use

local terminal = "kitty"

local fileManager = "nautilus"

local menu = "hyprlauncher"

--################

--##  editing  ###

--################
local looknfeel  = require("looknfeel")
local monitors   = require("monitors")
local env        = require("env")
local autostart  = require("autostart")
local perms      = require("perms")
local input      = require("input")
local workspaces = require("workspaces")
local binds      = require("binds")
local rules      = require("rules")

--#####################

--##  User Settings ###

--#####################


-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprlock")
end)
	
package.path = package.path .. ";./?.lua;./?/init.lua"

hl.config({
  cursor = { no_hardware_cursors = true },
  general = { allow_tearing = true },
})
