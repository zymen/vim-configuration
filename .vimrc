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
set laststatus=2
set t_Co=25
let g:Powerline_symbols = "fancy"

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
imap jj <Esc>
nmap <Space> :
nmap <C-o> ddO
nnoremap <silent> ,ff     :FufCoverageFile<CR>

filetype plugin on

"make it possible to use plugins from bundle directory of vim 
call pathogen#infect() 
