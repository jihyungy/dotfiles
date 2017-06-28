set nocompatible
filetype off

syntax on

set rtp+=~/.vim/bundle/Vundle.vim
set number
set relativenumber
set laststatus=2
set t_Co=256

hi CursorLineNr	term=bold ctermfg=yellow ctermbg=black
hi LineNr	ctermfg=grey ctermbg=black

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

filetype plugin indent on
