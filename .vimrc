" I found out what this does -- it turns off vi compatability mode. 
" It's also a noop apparently because vim autmatically turns off vi mode 
" when it sees a .vimrc, but I'm leaving it because I use this vimrc in lots
" of environments and I don't understand everything so I'm paranoid.
set nocompatible

call plug#begin('~/.vim/bundle/')
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"
" Plug 'Valloric/YouCompleteMe', 
"     \ { 'for': ['javascript', 'typescript', 'ruby','rust'], 'do': './install.py' }
Plug 'rust-lang/rust.vim'  
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'hdima/python-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'elzr/vim-json'
Plug 'alvan/vim-closetag'
Plug 'airblade/vim-gitgutter'
set updatetime=100 "make the gutter markings show up sooner
set signcolumn=yes
let g:gitgutter_map_keys = 0
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
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

" fzf function hotkeys
nnoremap jj :Files<Cr>
nnoremap jk :Rg<Cr>

" Make j and k respect wrapped lines
noremap <down> gj
noremap <up> gk
noremap j gj
noremap k gk

" I got most of the following stuff from here:
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

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" use ; to enter command mode
nnoremap ; :

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
" First, make sure .vim/files and friends exist, otherwise vim will be unable
" to use them: 
"for dir in ['files', 'files/backup', 'files/swap', 'files/undo', 'files/info']
"    let full_dir = $HOME.'/.vim/'.dir
"    echom full_dir
"    if !isdirectory(full_dir)
"        call mkdir(full_dir)
"    endif
"endfor
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

" custom statusline
" see https://medium.com/@kadek/the-last-statusline-for-vim-a613048959b2
set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%#function#
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%#function#
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file
hi StatusLine ctermbg=NONE cterm=NONE

