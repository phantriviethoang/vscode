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

inoremap jh <Esc>I
inoremap jl <Esc>A

inoremap j, <Esc>A,<Esc>
inoremap j; <Esc>A;<Esc>

inoremap jf <C-o>m`<C-o>$<C-o>a,<C-o>``
inoremap jd <C-o>m`<C-o>$<C-o>a;<C-o>``

nnoremap <leader>j m`o<Esc>``
nnoremap <leader>k m`O<Esc>``

" class helpers
" nnoremap <leader>u f>i <Esc>a
" nnoremap <leader>i F>i <Esc>a
" nnoremap <leader>y f/i <Esc>i
" nnoremap <leader>o F/hi <Esc>a

nnoremap <leader>uc f>i class=
nnoremap <leader>ur f>i className=
nnoremap <leader>ui f>i id=
nnoremap <leader>un f>i name=
nnoremap <leader>up f>i placeholder=
nnoremap <leader>ut f>i type=
nnoremap <leader>uv f>i value=

nnoremap <leader>ic F>i class=
nnoremap <leader>ir F>i className=
nnoremap <leader>ii F>i id=
nnoremap <leader>in F>i name=
nnoremap <leader>ip F>i placeholder=
nnoremap <leader>it F>i type=
nnoremap <leader>iv F>i value=

nnoremap <leader>yc f/hi class=
nnoremap <leader>yr f/hi className=
nnoremap <leader>yi f/hi id=
nnoremap <leader>yn f/hi name=
nnoremap <leader>yp f/hi placeholder=
nnoremap <leader>yt f/hi type=
nnoremap <leader>yv f/hi value=

nnoremap <leader>oc F/hi class=
nnoremap <leader>or F/hi className=
nnoremap <leader>oi F/hi id=
nnoremap <leader>on F/hi name=
nnoremap <leader>op F/hi placeholder=
nnoremap <leader>ot F/hi type=
nnoremap <leader>ov F/hi value=

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
