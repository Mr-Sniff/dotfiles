-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.termguicolors = true

-- transperency
require("transparent").setup({
  -- These groups are cleared by default, but we'll add the tab/buffer groups
  extra_groups = {
    "NormalFloat", -- Floats like Lazy, Mason, and LspInfo
    "FloatBorder", -- Borders of floating windows
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptBorder",
    "TelescopeResultsBorder",
    "TelescopePreviewBorder",
    "TabLine", -- The buffer tabs at the top
    "TabLineFill",
    "TabLineSel",
    "SnacksNormal",
    "SnacksNormalNC",
    "SnacksWinBar",
    "SnacksWinBarNC",
    -- If you use the Snacks Picker (instead of Telescope)
    "SnacksPickerNormal",
    "SnacksPickerBorder",
  },
})

--godot mcp
-- Run immediately for the current session
if vim.fn.filereadable(vim.fn.getcwd() .. "/project.godot") == 1 then
  local addr = "./godot.pipe"
  vim.fn.serverstart(addr)
end
