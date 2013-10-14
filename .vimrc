set nocompatible
set number
set ignorecase
set ruler
set smartcase
set hlsearch
color desert

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set t_Co=256

" let Vundle manage Vundle
  Bundle 'gmarik/vundle'
  Bundle 'msanders/snipmate.vim'
  Bundle 'mattn/emmet-vim'
  Bundle 'tpope/vim-surround'
  Bundle 'L9'
  Bundle 'FuzzyFinder'
  Bundle 'scrooloose/nerdtree'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'kien/ctrlp.vim'
  Bundle 'tpope/vim-fugitive'
  Bundle 'desert-warm-256'
  colorscheme desert-warm-256

set nowrap

" Actions on action
  autocmd! bufwritepost .vimrc source %

syntax enable
" set encoding=utf8
"
" convert tabs into spaces
set expandtab
set shiftwidth=2
set smarttab
set smartindent
set laststatus=2

let g:Powerline_symbols = "fancy"

let mapleader = ","

" Stop creating swap files at edit time
set noswapfile

" Make it possible to fast show/hide NERDTree
" Shortcuts
  map <F7> :NERDTreeToggle<CR>

  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

  " Edit config on shift+f12
  map <S-F12> :e ~/.vimrc<CR>

  " Change size of windows (numeric keyboard)
  map <kPlus> <C-W>+<CR>
  map <kMinus> <C-W>-<CR>
  map <kDivide> <c-w><<CR>
  map <kMultiply> <c-w>><CR>

  " faster idea to switch into normal mode
  imap jj <Esc>

  " Convert two key-press (shift+;) into one
  nmap <Space> :
  nmap <C-o> ddO
  nnoremap <silent> <Leader>ff     :FufCoverageFile<CR>

filetype plugin indent on
