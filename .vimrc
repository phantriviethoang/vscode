set autoindent
set hlsearch
set ignorecase
set smartcase
set incsearch
set showcmd
set textwidth=80
set timeout
set timeoutlen=200

set report=2
set whichwrap=b,s

let mapleader = " "
set nogdefault

set nojoinspaces

inoremap jj <Esc>
inoremap jk <Esc>l

inoremap jf <C-o>m`<C-o>$<C-o>a,<C-o>``
inoremap jd <C-o>m`<C-o>$<C-o>a;<C-o>``

nnoremap H ^
nnoremap L $

vnoremap H ^
vnoremap L $

onoremap H ^
onoremap L $

nnoremap <C-[> g^
nnoremap <C-]> g_

vnoremap <C-[> g^
vnoremap <C-]> g_

" inoremap <C-d> <Del>
" inoremap <C-t> <Tab>

nnoremap <C--> <C-x>
nnoremap <C-=> <C-a>

vnoremap <C-c> y
vnoremap <C-x> d

nnoremap s cl

nnoremap m s
nnoremap <C-m> S

nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j

nnoremap zo o<Esc>o
nnoremap yo O<Esc>O

nnoremap <leader><Esc> :nohlsearch<CR>

vnoremap ; <Esc>

vnoremap > >gv
vnoremap < <gv

vnoremap p pgvy

vnoremap s c
vnoremap m s

cnoremap jj <Esc>
cnoremap jk <Esc>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

nnoremap <leader>ev :edit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
