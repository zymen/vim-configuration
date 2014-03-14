set nocompatible
" configure and run Vundle
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

set number
set ignorecase
set ruler
set smartcase
set hlsearch

" selects autocompletion type
set omnifunc=syntaxcomplete#Complete

" updates way of presenting items on suggestion list
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

filetype off " required!

" fold
  set foldmethod=indent

" let Vundle manage Vundle
  Bundle 'Valloric/YouCompleteMe'
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
  Bundle 'Lokaltog/powerline'
  Bundle 'scrooloose/syntastic'
  Bundle 'vim-scripts/camelcasemotion'
  Bundle 'mattn/emmet-vim'

" set colors, enable colors schema
  set t_Co=256
  color desert

" disable warpping long lines.
  set nowrap

" Reload .vimrc after saving it
  autocmd! bufwritepost .vimrc source %
  "autocmd VimLeave * call SaveSession()

  syntax enable

" Encoding for screen not for file!
  set encoding=utf8

" Convert tabs into spaces
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
  map <F7> :NERDTreeToggle<CR>

  " Make it easier to switch between windows
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

  " Make move faster
  map <A-j> 3j
  map <A-k> 3k
  map <A-h> 3h
  map <A-l> 3l

  " Edit config on shift+f12
  map <S-F12> :e ~/.vimrc<CR>

  " Change size of windows (numeric keyboard)
  map <kPlus> <C-W>+<CR>
  map <kMinus> <C-W>-<CR>
  map <kDivide> <c-w><<CR>
  map <kMultiply> <c-w>><CR>

  " faster idea to switch into normal mode
  imap jj <Esc>

  nmap <leader>w :w<CR><ESC>

  nmap <leader>feu :set fileencoding=utf8<CR>

  " Convert two key-press (shift+;) into one
  nmap <Space> :
  nnoremap <silent> <Leader>ff     :FufCoverageFile<CR>
  nnoremap <silent> <Leader>fr     :FufRenewCache<CR>
  nnoremap <silent> <Leader>fc     :FufTag<CR>
  nnoremap <silent> <Leader>fb     :FufBuffer<CR>

  " Format json
  nmap <F11> :%! python -m json.tool<CR>

filetype plugin indent on

" making completion menu looks better
highlight Pmenu guibg=brown gui=bold
highlight Pmenu ctermbg=138 gui=bold

" Remove some types of files from fuzzy finder list
let g:fuf_file_exclude = '\vnode_modules|\~$|\.(o|exe|dll|bak|pyc|orig|swp|jpg|png|gif)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_coveragefile_exclude = '\vnode_modules|\~$|\.(o|exe|pyc|dll|bak|orig|swp|jpg|png|gif)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_dir_exclude = '\vnode_modules|*tmp-mixture.*'

let g:ycm_key_list_select_completion = ['<Down>']
