local telescope = require("telescope")

local map = vim.keymap.set
local builtin = require('telescope.builtin')


map("n","<leader>ff",builtin.find_files, {desc="Telescope file"})
map("n","<leader>fc",builtin.colorscheme, {desc="Telescope colorscheme"})
map("n","<leader>fk",builtin.keymaps,{desc="Telescope keymaps"})
map("n","<leader>fr",builtin.resume,{desc="Telescope resume"})

telescope.setup(
	{
  defaults = {
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    git_status = {
      theme = "dropdown",
    },
    git_bcommits = {
      theme = "dropdown",
    },
    git_branches = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
    buffers = {
      theme = "dropdown",
    },
    help_tags = {
      theme = "dropdown",
    },
    colorscheme={
      theme="dropdown",
    },
    keymaps={
      theme="dropdown",
    },
    resume={
	theme="dropdown"
    },
	    
  },
  extensions = {
    -- ...
  },
})

