require "config.vim_options"
require "config.global_options"
-- autocmds and keymaps can wait to load
vim.api.nvim_create_autocmd("User", {
  group = vim.api.nvim_create_augroup("LazyVim", { clear = true }),
  pattern = "VeryLazy",
  callback = function()
	  require "config.keymaps"
	  require "config.autocmds"
  end,
})

require "config.lazy"
