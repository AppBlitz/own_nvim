return {
    'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config= function() require ("zoro.telescope") end
    }
