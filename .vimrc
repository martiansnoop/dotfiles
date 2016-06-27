" I don't actually know what this does but people think it's important
set nocompatible

" NeoBundle SETUP

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'leafgarland/typescript-vim'
" NeoBundleLazy 'scrooloose/syntastic'
NeoBundleLazy 'Valloric/YouCompleteMe', {
      \    'autoload': { 'filetypes': ['javascript', 'typescript', 'ruby', 'rust'] }
       \}
NeoBundle 'rust-lang/rust.vim'  
NeoBundle 'vim-ruby/vim-ruby'
" NeoBundle 'godlygeek/tabular' " vim-markdown depends on this
" NeoBundle 'plasticboy/vim-markdown'

 call neobundle#end()

 " Required:
 filetype plugin indent on
 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" VUNDLE SETUP
" This is a thing that Vundle wants 
" filetype off
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Raimondi/delimitMate'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'scrooloose/syntastic' " disable syntastic until I figure out how to
" make it fast
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'godlygeek/tabular' " vim-markdown depends on this
" Plugin 'plasticboy/vim-markdown'
" do other plugin shit here before the call to vundle end
" call vundle#end()            " required
" filetype plugin indent on    " required

" vim markdown setup
let g:vim_markdown_folding_disabled = 1

" rust completions via youcompleteme setup
let g:ycm_rust_src_path = '/usr/local/rustc-1.9.0/src/'

" Syntastic setup
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_typescript_checkers = ['tslint']

" YouCompleteMe setup
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" Syntax highlighting and theme
syntax on
syntax enable
colorscheme jellybeans 

" Make j and k respect wrapped lines
map <down> gj
map <up> gk

" I got most of the following crap from here:
"  http://nvie.com/posts/how-i-boosted-my-vim/

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set nowrap        " don't wrap lines
set tabstop=2     " a tab is two spaces
set softtabstop=2     " a tab is two spaces
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

set showcmd
