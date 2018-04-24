" VIMRC - name this ~/.vimrc
" and (even on windows) set up pathogen like this:
"  mkdir -p ~/.vim/autoload ~/.vim/bundle
"  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathgen.vim

set nocompatible
execute pathogen#infect()
filetype plugin indent on

set t_Co=256
syntax on
set background=dark
set mouse=a

colorscheme distinguished

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight Comment ctermbg=NONE

set cursorline
hi CursorLine cterm=NONE ctermbg=236

set ttyfast
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

set ruler
set backspace=indent,eol,start
set laststatus=2

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=100
set formatoptions=qrn1

noremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap j gj
nnoremap k gk

nnoremap ; :
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>q gqip

inoremap jk <ESC>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



