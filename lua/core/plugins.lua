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
    
    {   
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",

    }
    },

    {'nvim-treesitter/nvim-treesitter'},

    {
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim' }
    },
    
    {
        { 'akinsho/toggleterm.nvim', version = "*", config = true }
    },

    { 'kdheepak/tabline.nvim' },

    { 'maxmx03/solarized.nvim' },

    { 'neovim/nvim-lspconfig' },

    { 'hrsh7th/nvim-cmp' }, {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'},

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { "williamboman/mason.nvim" },
    
    {
        'nvimdev/dashboard-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
})

