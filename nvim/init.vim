
syntax on
set number
set relativenumber
set hls
set termencoding=utf-8
set noruler
set t_Co=256
set mouse=
set termguicolors

set incsearch
set ignorecase

set smartcase
set completeopt-=preview
set foldmethod=manual

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
nnoremap zl :source Session.vim<CR>
nnoremap zL :mksession<CR>
nnoremap zg :RustTest<CR>

nnoremap <leader>g :Git<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>

nnoremap <S-F8> :HexokinaseToggle<CR>

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
augroup rustBuilds
    au!
    au FileType rust nnoremap <F5> :Cargo run<CR>
    au FileType rust nnoremap <F6> :Cargo check<CR>
    au FileType rust nnoremap <F7> :Cargo test<CR>
augroup END

" Automatically reload .vimrc file on save
augroup init.vim
  au!
  au BufWritePost init.vim so ~/.config/nvim/init.vim
augroup END

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

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'

" Some shit
Plug 'iamcco/markdown-preview.nvim'

" Languages
Plug 'rust-lang/rust.vim'

call plug#end()


" Colorscheme
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

" Hexokinase
let g:Hexokinase_highlighters = ['foregroundfull']
" set signcolumn=yes:1

" Rainbow
let g:rainbow_active = 1

" Commands
command! Vimrc e ~/.config/nvim/init.vim
command! Swaycfg e ~/.config/sway/config
command! Zshrc e ~/.zshrc
command! ToTabs :%s/	/\t/g
command! ToSpaces :%s/\t/	/g
