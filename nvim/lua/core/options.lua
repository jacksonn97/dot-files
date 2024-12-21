local opt = vim.opt
local home = vim.fn.expand('~')

opt.syntax          = "on"
opt.number		    = true
opt.relativenumber	= true
opt.hls			    = true
opt.ruler   		= false
opt.mouse		    = ""
opt.termguicolors	= true
opt.lazyredraw      = false

opt.incsearch 		= true
opt.ignorecase 		= true
opt.smartcase 		= true
opt.foldmethod		= "manual"

opt.wildmenu		= true
opt.wildmode		= "full"

-- Настройка табов
opt.expandtab		= true
opt.smarttab		= true
opt.shiftwidth		= 4
opt.tabstop 		= 4
opt.softtabstop		= 4
opt.autoindent		= true

opt.wrap            = false
-- opt.sidescroll      = 10

opt.backupdir       = home.."/.cache/nvim/backup"
opt.undodir         = home.."/.cache/nvim/undo"
