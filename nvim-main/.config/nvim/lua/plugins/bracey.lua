return {
  "turbio/bracey.vim",
  -- This runs the install script to download npm dependencies
  build = "npm install --prefix server",
  -- Optional: Only load the plugin when you call a Bracey command
  cmd = { "Bracey", "BraceyStop", "BraceyReload", "BraceyEval" },
  -- Optional: Specify filetypes to load the plugin for
  ft = { "html", "javascript", "css" },
}
