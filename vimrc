set nocompatible
execute pathogen#infect()
syntax on
filetype indent plugin on
let g:tex_flavor='latex'
set noswapfile

"" line numbers
set number
set relativenumber

"" File stats
set ruler

"" Encoding
set encoding=utf-8

"" whitespace
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

"" Cursor
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk

"" auto completion
inoremap {<CR> {<CR><CR>}<ESC>ci{
inoremap "" ""<++><ESC>4hci"
inoremap ii <ESC>

"" Folding
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

"" spelling
set spell
set spellsuggest=fast,20 "Don't show too much suggestion for spell check.

nnoremap <F12> :call ToggleSpell()<CR>
function! ToggleSpell()
  if &spell== 'nospell'
    setlocal spell
    echo "Spelling is on"
  else
    setlocal nospell
    echo "Spelling is off"
  endif
endfunction

nnoremap <F9> :call ToggleDictionary()<CR>
function! ToggleDictionary()
  if &spelllang=='en_gb'
    set spelllang=da
    set spellfile=~/.vim/da.utf-8.add
    echo "Spellcheck Danish"
  else
    set spelllang=en_gb
    set spellfile=~/.vim/en.utf-8.add
    echo "Spellcheck English"
  endif
endfunction

call plug#begin('~/.vim/plugged')
Plug 'https://tpope.io/vim/repeat.git'
Plug 'michaeljsmith/vim-indent-object'
Plug 'OmniSharp/Omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nickspoons/vim-sharpenup'
call plug#end()
