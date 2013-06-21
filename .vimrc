set number
set ignorecase
set ruler
set smartcase
set hlsearch
color desert

syntax enable
" set encoding=utf8
set expandtab
set shiftwidth=2
set smarttab
set smartindent

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
imap jj <Esc>
nmap <Space> :

filetype plugin on

"make it possible to use plugins from bundle directory of vim 
call pathogen#infect() 
