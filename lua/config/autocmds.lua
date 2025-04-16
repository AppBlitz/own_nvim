vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = {"*.http"},
  callback = function()
	  vim.keymap.set("n","<leader>r","<cmd>Rest run<cr>")
  end
})
