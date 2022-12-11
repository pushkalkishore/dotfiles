" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set nocompatible
set esckeys
set encoding=utf-8

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on
set t_Co=256
set termguicolors
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin("~/.vim/plugged")
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'ap/vim-css-color'

Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()
let mapleader= " "
set laststatus=2
map <leader>n ni

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
" let &t_ut=''