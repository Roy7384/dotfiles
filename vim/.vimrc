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
augroup TransparentBg
  autocmd!
  autocmd ColorScheme * highlight Normal       ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight NonText      ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight LineNr       ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight SignColumn   ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight EndOfBuffer  ctermbg=NONE guibg=NONE
augroup END
colorscheme habamax

set cursorline
:highlight Cursorline cterm=bold ctermbg=black

set ignorecase
set smartcase
set incsearch
set hlsearch

set nu

let mapleader = " "
imap jk <esc>


set hidden
nnoremap [b :tabprevious<CR>
nnoremap ]b :tabnext<CR>
