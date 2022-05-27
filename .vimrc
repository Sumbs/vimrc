" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'tpope/vim-endwise'    " End structures automatically
Plug 'jiangmiao/auto-pairs'     " Insert or delete delimiters in pair
Plug 'sjl/badwolf'      " Badwolf color scheme
call plug#end()

colorscheme badwolf     " cool colors

syntax enable           " enable syntax processing
set clipboard=unnamedplus       "enables yanking to system clipboard
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2               " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set cursorline          " highlight current line
"filetype indent on             "load filetype-specific indent files
set wildmenu            " visual autocomplete for comand menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch        " highlight matches
set shiftwidth=2  

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ don't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader=","       " leader is comma
inoremap jk <esc>k      " jk is escape

" save session
nnoremap <leader>s :mksession<CR>
