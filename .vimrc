set nocompatible

"pathogen setup
" Not sure which of these is required because I'm in blind C&P mode
execute pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Syntax highlighting and theme
syntax on
"filetype plugin indent on
"let g:solarized_termcolors=16
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
syntax enable
"set t_Co=16
"set background=dark
colorscheme distinguished
"highlight LineNr ctermbg=black

map <down> gj
map <up> gk

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map <down> gj 
  map <up> gk
  setlocal spell spelllang=en_us 
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu 
com! WP call WordProcessorMode()

" I got most of the following crap from here:
"  http://nvie.com/posts/how-i-boosted-my-vim/

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set nowrap        " don't wrap lines
set tabstop=2     " a tab is two spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab     " use spaces instead of tabs always
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" temporarilty disable autoindent when pasting crap
set pastetoggle=<F2> 

" This clears the search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>

"reopen (now with sudo privileges) file that requires sudo to edit
" do this by typing w!!
cmap w!! w !sudo tee % >/dev/null

