set nocompatible
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" required for vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let vundle manage itself
Bundle 'gmarik/vundle'

"Bundles from GitHub

    "Better file browser
    Bundle 'scrooloose/nerdtree'
    "Nerdtree tabs
    Bundle 'jistr/vim-nerdtree-tabs'
    "Code commenter
    Bundle 'scrooloose/nerdcommenter'
    "Color Scheme
    Bundle 'altercation/vim-colors-solarized'
    "Git integration
    Bundle 'tpope/vim-fugitive'
    "Powerline
    Bundle 'Lokaltog/vim-powerline'
    "Syntastic
    Bundle 'scrooloose/syntastic'
    "Ctrl P
    Bundle 'kien/ctrlp.vim'
    "Auto Complete
    Bundle 'Valloric/YouCompleteMe'
    "CSV plugin
    Bundle 'chrisbra/csv.vim'
    

"Bundles from Vim scripts
    
    "sudo vim for editing protected files
    Bundle 'sudo.vim'


"Config    
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

"allow plugins by filetype
filetype plugin on
filetype indent on

"rest of vim config
color solarized
set background=dark

"default spacing
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4    

"change leader
let mapleader = ','

" filetype specific spacing and completion
autocmd Filetype php,html,c,java,cpp set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4 
autocmd Filetype rb set expandtab tabstop=2 softtabstop=2 shiftwidth=2 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"
set ls=2

"
set showtabline=2

"line numbers
set nu

"no wrap!
set nowrap 

"fancy color for terminal
set term=xterm-256color

"tab bindings
nnoremap tk  :tabp<CR>
nnoremap tj  :tabn<CR>
nnoremap tn  :tabnew<CR>


syntax on

set backspace=indent,eol,start   

:autocmd InsertEnter,InsertLeave * set cul!

let g:ycm_cache_omnifunc = 1

"NerdTree config
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_console_startup=1

let g:Powerline_symbols = 'fancy'
if has('gui_macvim')
    set transparency=5 " Make the window slightly transparent
    set guifont=Monaco\ for\ Powerline\ Regular:h12
endif
