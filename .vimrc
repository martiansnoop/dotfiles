" I found out what this does -- it turns off vi compatability mode.
" It's also a noop apparently because vim autmatically turns off vi mode
" when it sees a .vimrc, but I'm leaving it because I use this vimrc in lots
" of environments and I don't understand everything so I'm paranoid.
set nocompatible
set autoread " automatically read files that are changed in the filesystem 
let mapleader = "j"

call plug#begin('~/.vim/bundle/')
Plug 'jelera/vim-javascript-syntax'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"
" Plug 'Valloric/YouCompleteMe',
"     \ { 'for': ['javascript', 'typescript', 'ruby','rust'], 'do': './install.py' }
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts'
Plug 'airblade/vim-gitgutter'
set updatetime=100 "make the gutter markings show up sooner
set signcolumn=yes
let g:gitgutter_map_keys = 0
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround' "ysiw]
Plug 'tpope/vim-repeat' "ysiw]
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ap/vim-buftabline'
let g:buftabline_show = 1       " only show if >1 buffer
let g:buftabline_indicators = 1 " indicate if modified

if filereadable(expand('~/.vim/work_specific.vim'))
    source ~/.vim/work_specific.vim
else
    source ~/.vim/personal_specific.vim
endif

call plug#end()

" Syntax highlighting and theme
syntax on
syntax enable
" set background=dark
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
colorscheme jellybeans

map <leader>ss :mksession! ~/.vim/session <cr> " Quick write session
map <leader>sr :source ~/.vim/session <cr>     " And load session
set sessionoptions=buffers,curdir,folds,help

" buffer management shortcuts
nnoremap <S-Tab>   :bp<cr> " prev buffer
nnoremap <Tab>     :bn<cr> " next buffer
nnoremap <leader>q :bd<cr> " close buffer
" no really, please close .netrw buffers
autocmd FileType netrw setl bufhidden=delete
let g:netrw_fastbrowse = 0

" fzf function hotkeys
nnoremap jj :Files<Cr>
nnoremap jk :Rg<Cr>

" Make up and down respect wrapped lines
noremap <down> gj
noremap <up> gk

" get json syntax highlighting via javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

" set up markdown files wrap lines and break on words
autocmd FileType markdown setlocal wrap linebreak

" new splits will be at the bottom or to the right side of the screen
set splitbelow
set splitright

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

" tabs and spaces (tabstop/shiftwidth set in personal/work vimrcs)
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab     " use spaces instead of tabs always
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" searching
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" temporarily disable autoindent when pasting
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

set wildmenu
set wildmode=full
hi WildMenu cterm=underline,bold

" custom statusline
" see https://medium.com/@kadek/the-last-statusline-for-vim-a613048959b2
set laststatus=2
set statusline=
set statusline+=%#function#               " use color of function keyword
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%#function#
set statusline+=%-40f\                    " path
" set statusline+=\ %b                      " value of character under cursor
" set statusline+=\ 0x%B                    " value of character in hex

set statusline+=%=                        " switch to the right side
set statusline+=%y                        " filetype
set statusline+=\ %{(&fenc!=''?&fenc:&enc)} " encoding
set statusline+=\ (%l,%c)                 " line and column
set statusline+=\ %p%%                    " percentage of file
hi StatusLine ctermbg=000 cterm=NONE ctermfg=White

set exrc    " allow for project-specific vimrc files
set secure  " don't let project-specific vimrc files do insecure stuff
