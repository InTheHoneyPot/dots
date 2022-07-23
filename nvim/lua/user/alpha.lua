local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[88                                                       88]],
  [[88                                                       ""]],
  [[88                                                         ]],
  [[88,dPPYba,   ,adPPYba,  8b,dPPYba,  ,adPPYba, ,adPPYYba, 88]],
  [[88P'    "8a a8"     "8a 88P'   `"8a I8[    "" ""     `Y8 88]],
  [[88       d8 8b       d8 88       88  `"Y8ba,  ,adPPPPP88 88]],
  [[88b,   ,a8" "8a,   ,a8" 88       88 aa    ]8I 88,    ,88 88]],
  [[8Y"Ybbd8"'   `"YbbdP"'  88       88 `"YbbdP"' `"8bbdP"Y8 88]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "Welcome Nathaniel"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
