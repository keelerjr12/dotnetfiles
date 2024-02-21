require("keelerjr.remap")
require("keelerjr.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lsp-signature-help'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'tpope/vim-fugitive'},
    { 'numToStr/Comment.nvim',
        opts = { 
            -- add any options here
        },
        lazy = false,
    },
    {"folke/tokyonight.nvim", lazy = false, priority = 1000, config = function()
        vim.cmd('colorscheme tokyonight-night')
    end},
    --{ "rose-pine/neovim", name = "rose-pine", config = function()
    --    vim.cmd('colorscheme rose-pine')
    --end},
    {'nvim-lualine/lualine.nvim', 
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
})
