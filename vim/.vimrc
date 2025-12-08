syntax on
set splitbelow
set number
set scrolloff=8
set tabstop=8
set shiftwidth=2
set expandtab
set smartindent
set colorcolumn=72
set clipboard=unnamed,unnamedplus

set showmatch

if !has('gui_running')
  set t_Co=256
endif

set termguicolors
colorscheme habamax

set cursorline
:highlight Cursorline cterm=bold ctermbg=black

set ignorecase
set smartcase
set incsearch
set hlsearch

set relativenumber
set nu

let mapleader = " "
imap jk <esc>

