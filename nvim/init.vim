
syntax on
set number
set relativenumber
set hls
set noruler
set t_Co=256
set mouse=
set termguicolors
set nolazyredraw

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

" Работа с кириллицей
set spelllang=ru_ru,en_us
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" Hotkeys

" Session control
nnoremap <leader>zl :source Session.vim<CR>
nnoremap <leader>zL :mksession

" Default leader '\'
nnoremap <leader>g :Git<CR>:on<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>m :Marks<CR>

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tm :tabmove
nnoremap <leader>tf :tabmove0<CR>
nnoremap <leader>tl :tabmove$<CR>

" Spellcheck
nnoremap <leader>se :setlocal spell<CR>
nnoremap <leader>sd :setlocal nospell<CR>

nnoremap <A-2> :HexokinaseToggle<CR>

" Unbind arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Билды
augroup rustBuilds
    au!
    au FileType rust nnoremap <A-9> :Cargo run<CR>
                 \ | nnoremap <A-0> :Cargo check<CR>
                 \ | nnoremap <A--> :Cargo test<CR>
                 \ | nnoremap <A-e> :Cargo doc<CR>
                 \ | nnoremap <leader>tt :RustTest<CR>
augroup END

augroup arduinoBuilds
    au!
    au FileType arduino nnoremap <A-1> :ArduinoAttach
                    \ | nnoremap <A-2> :ArduinoVerify<CR>
                    \ | nnoremap <A-4> :ArduinoSerial<CR>
                    \ | nnoremap <A-5> :ArduinoChooseBoard<CR>
                    \ | nnoremap <A-9> :ArduinoUploadAndSerial<CR>
augroup END

" Hex editing mode
augroup Binary
    au!
    au BufReadPre  *.bin set binary
    au BufReadPost *.bin
                \ if &binary
                \ |   execute "silent %!xxd -c 32"
                \ |   set filetype=xxd
                \ |   redraw
                \ | endif
    au BufWritePre *.bin
                \ if &binary
                \ |   let s:view = winsaveview()
                \ |   execute "silent %!xxd -r -c 32"
                \ | endif
    au BufWritePost *.bin
                \ if &binary
                \ |   execute "silent %!xxd -c 32"
                \ |   set nomodified
                \ |   call winrestview(s:view)
                \ |   redraw
                \ | endif
augroup END


" Automatically reload init.vim file on save
augroup init.vim
    au!
    au BufWritePost init.vim so ~/.config/nvim/init.vim
augroup END

augroup removeTrailingSpaces
    au!
    au BufWritePre * :%s/\s\+$//e
augroup END

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'

" Common
Plug 'RRethy/vim-hexokinase'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf.vim'

" Some shit
Plug 'iamcco/markdown-preview.nvim'

" Languages
Plug 'rust-lang/rust.vim'
Plug 'stevearc/vim-arduino'

Plug 'sheerun/vim-polyglot'

call plug#end()


" Colorscheme
" Gruvbox
" let g:gruvbox_transparent_bg = 1
" let g:gruvbox_contrast_dark = "soft"
" colorscheme gruvbox

" Everforest
let g:everforest_background = 'medium'
let g:everforest_better_performance = 1
colo everforest

" Hexokinase
let g:Hexokinase_highlighters = ['foregroundfull']
" set signcolumn=yes:1

" Rainbow
let g:rainbow_active = 1
lua vim.lsp.inlay_hint.enable(false)
lua vim.g.inlay_hints_visible = false

let g:airline#extensions#whitespace#symbol = '!'

" Commands
command! Vimrc e ~/.config/nvim/init.vim
command! Swaycfg e ~/.config/sway/config
command! Zshrc e ~/.zshrc
command! ToTabs %s/    /\t/g
command! ToSpaces %s/\t/    /g
command! RmDbg '<,'>s/\vdbg!\((.*)\)/\1/g
command! W w
