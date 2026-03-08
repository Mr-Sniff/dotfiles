-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("gruvbox").load()
if vim.fn.filereadable(vim.fn.getcwd() .. "/project.godot") == 1 then
  local addr = "./godot.pipe"
  vim.fn.serverstart(addr)
end
