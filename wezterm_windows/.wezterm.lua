-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- change config now
config.default_domain = 'WSL:Arch'


-- This is where you actually apply your config choices

config.font = wezterm.font("Fira Code")

config.color_scheme = "Dracula"

-- and finally, return the configuration to wezterm
return config