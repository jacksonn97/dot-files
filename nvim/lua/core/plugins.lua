local vim = vim
local Plug = vim.fn['plug#']

vim.call("plug#begin")

-- Themes
Plug('morhetz/gruvbox')
Plug('sainnhe/everforest')

-- Common
-- Plug('RRethy/vim-hexokinase')
Plug('neoclide/coc.nvim', { ['branch'] = 'release'})
Plug('vim-airline/vim-airline')
Plug('luochen1990/rainbow')
Plug('jiangmiao/auto-pairs')

Plug('tpope/vim-surround')
Plug('tpope/vim-commentary')
Plug('tpope/vim-fugitive')

Plug('junegunn/fzf.vim')

-- Some shit
Plug('iamcco/markdown-preview.nvim')

-- Languages
Plug('rust-lang/rust.vim')
Plug('stevearc/vim-arduino')

Plug('sheerun/vim-polyglot')
Plug('RRethy/vim-hexokinase')

vim.call('plug#end')

------ Plugins settings ------

-- Hexokinase
-- vim.g.Hexokinase_highlighters = 'foregroundfull'
-- vim.opt.signcolumn = 'yes:1'

-- Rainbow
vim.g.rainbow_active = 1
vim.lsp.inlay_hint.enable(false)
vim.g.inlay_hints_visible = false
