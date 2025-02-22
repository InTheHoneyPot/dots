local status, everforest = pcall(require, "everforest")
if (not status) then return end

everforest.setup({
  background = "soft",
  transparent_background_level = 0,
  italics = true,
  disable_italic_comments = false,
})
