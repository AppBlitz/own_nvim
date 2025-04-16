local map = vim.keymap.set
map("n", "wq", "<cmd>wqall<CR>", { silent = true, desc = "All save and exit" })
map("i","jk","<esc>",{desc="mode indert and mode normal"})
map("n","<leader>w","<cmd>wall<cr>",{desc="save"})

