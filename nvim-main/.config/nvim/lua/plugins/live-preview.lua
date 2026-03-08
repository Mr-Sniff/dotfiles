return {
  {
    "brianhuster/live-preview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required for internal functions
    config = function()
      require("live-preview").setup({
        -- Default port is 5500, change if you need to
        port = 5500,
        -- Set to true if you want the browser to open automatically
        browser_command = nil,
      })
    end,
  },
}
