--Basic 
require('core.plugins')
require('core.base')

--Plugins
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.lualine')
require('plugins.toggleterm')
require('plugins.tabline')
require('plugins.autopairs')
require('plugins.telescope')
require("plugins.dashboard")

--Lsp
require('lsp.lsp')
require('lsp.cmp')
require('lsp.mason')

--Mapping
require('core.mappings')
