return {
  'Mofiqul/vscode.nvim',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  -- LSP stuff
  {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',
  'onsails/lspkind.nvim',
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
    },
    opts = {
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      -- log_level = 'debug',
    }
  },
  'lewis6991/gitsigns.nvim',
  'm4xshen/autoclose.nvim',
  'numToStr/Comment.nvim',
  "ramilito/winbar.nvim",
  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
      })
    end,
  },
  'romgrk/doom-one.vim',
  'nvim-lualine/lualine.nvim',
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  'sonph/onehalf',
}
