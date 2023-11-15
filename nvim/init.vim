" База

syntax on 
set number
set relativenumber
set hls
set termencoding=utf-8
set noruler
set t_Co=256
set mouse=
set termguicolors
set ignorecase
set smartcase
set completeopt-=preview

set wildmenu
set wildmode=full

" Настройка табов
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent

set backupdir=~/.cache/nvim/backup

" Hotkeys

" Анбинд стрелок
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Билды
autocmd FileType rust nnoremap <F5> :Cargo run<CR>
autocmd FileType rust nnoremap <F6> :Cargo check<CR>
autocmd FileType rust nnoremap <F7> :Cargo test<CR>

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Themes 
Plug 'morhetz/gruvbox'

" Common
Plug 'RRethy/vim-hexokinase'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'

" Languages
Plug 'rust-lang/rust.vim'

call plug#end()


" Colorscheme
colorscheme gruvbox
" hi Normal guibg=None ctermbg=None
let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

" Hexokinase
let g:Hexokinase_highlighters = ['foregroundfull']
" set signcolumn=yes:1

" Rainbow
let g:rainbow_active = 1

