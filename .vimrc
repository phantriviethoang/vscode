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

nnoremap <leader>j m`o<Esc>``
nnoremap <leader>k m`O<Esc>``

nnoremap K i<CR><Esc>

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

nnoremap <C--> <C-x>
nnoremap <C-=> <C-a>

vnoremap <C-c> y
vnoremap <C-x> d

nnoremap s cl

nnoremap m s
nnoremap <C-m> S

nnoremap zj <leader><leader>j
nnoremap zk <leader><leader>k
nnoremap zh <leader><leader>e
nnoremap zl <leader><leader>ge

nnoremap gh <leader><leader>f
nnoremap gl <leader><leader>F

nnoremap zo o<CR>
nnoremap yo O<CR><Esc>kA

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
