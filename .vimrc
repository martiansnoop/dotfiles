" I found out what this does -- it turns off vi compatability mode. 
" It's also a noop apparently because vim autmatically turns off vi mode 
" when it sees a .vimrc, but I'm leaving it because I use this vimrc in lots
" of environments and I don't understand everything so I'm paranoid.
set nocompatible

call plug#begin('~/.vim/bundle/')
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/YouCompleteMe', 
      \ { 'for': ['javascript', 'typescript', 'ruby','rust'], 'do': './install.py' }
Plug 'rust-lang/rust.vim'  
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'hdima/python-syntax'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" rust completions via youcompleteme setup
let g:ycm_rust_src_path = '/usr/local/rustc-1.9.0/src/'

" YouCompleteMe setup
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
set completeopt-=preview

" Syntax highlighting and theme
syntax on
syntax enable
colorscheme jellybeans 
" set background=dark

" Make j and k respect wrapped lines
map <down> gj
map <up> gk
map j gj
map k gk

" I got most of the following crap from here:
"  http://nvie.com/posts/how-i-boosted-my-vim/

set hidden        " allow switching with :e without writing 
set nowrap
set number        " always show line numbers
set history=1000
set undolevels=1000
set visualbell
set noerrorbells
set backspace=indent,eol,start 
                  " allow backspacing over everything in insert mode
set wildignore=*.swp,*.bak,*.pyc,*.class
set title         " change the terminal's title to name of file
set showcmd
set shell=zsh
set cursorline

" tabs and spaces
set tabstop=4
set softtabstop=8
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab     " use spaces instead of tabs always
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" searching
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" temporarilty disable autoindent when pasting crap
set pastetoggle=<F2> 

"reopen (now with sudo privileges) file that requires sudo to edit
" do this by typing w!!
cmap w!! w !sudo tee % >/dev/null

