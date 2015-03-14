set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chriskempson/base16-vim'
Plugin 'godlygeek/csapprox'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
Plugin 'rhysd/vim-clang-format'
Plugin 'octol/vim-cpp-enhanced-highlight'
Bundle 'majutsushi/tagbar'
Bundle 'morhetz/gruvbox'
Bundle 'sjl/badwolf'
Bundle 'Yggdroot/indentLine'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_extra_conf_globlist = ['~/Projects/YAL/*']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set autoread
set ruler

set ignorecase
set smartcase

set laststatus=2

if has("gui_running")
  set lines=999 columns=999
  " set guifont=Monospace\ 9
  set guifont=Droid\ Sans\ Mono
endif

set hlsearch
set incsearch

set magic
set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

set encoding=utf8
set ffs=unix,dos,mac

set backspace=indent,eol,start

" NERD tree config
" autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ClangFormat config
let g:clang_format#command="clang-format-3.5"
let g:clang_format#style_options = {
    \ "BasedOnStyle": "LLVM",
    \ "AllowShortFunctionsOnASingleLine": "false",
    \ "BreakBeforeBinaryOperators": "true",
    \ "PointerAlignment": "Left"}
let g:clang_format#auto_format=1
" let g:clang_format#auto_format_on_insert_leave=1
autocmd FileType c,cpp noremap <C-k> :ClangFormat<CR>

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
autocmd FileType make setlocal noexpandtab
set colorcolumn=80

set showcmd
set number

set lbr
set tw=500

set ai
set si
set wrap

set mouse=a
set t_Co=256

" colorscheme base16-pop
" colorscheme gruvbox
" colorscheme badwolf
" colorscheme solarized
colorscheme euphrasia3

set background=dark

nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-b> :! ./%<CR>
