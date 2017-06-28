set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set number
set relativenumber
set laststatus=2
set t_Co=256
set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add

filetype off

syntax on

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
let g:livepreview_previewer = "zathura"

"Latex navigation with guides
inoremap <Space><Space> <Esc>/(++)<Enter>"_c4l
inoremap <Space><Backspace> (++)<Esc>/(++)<Enter>"_c4l
inoremap ;gui (++)
vnoremap <Space><Space> <Esc>/(++)<Enter>"_c4l
map <Space><Space> <Esc>/(++)<Enter>"_c4l

"Easy saving
inoremap <C-s> <Esc>:w!<Enter>i
nnoremap <C-s> :w!<Enter>

"Function key mapping
map <F7> :setlocal spell<cr>
map <F12> :LLPStartPreview<cr>

autocmd FileType tex inoremap ;em \emph{}<Space>(++)<Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<Space>(++)<Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<Space>(++)<Esc>T{i
autocmd FileType tex inoremap ;ct \cite{}<Space>(++)<Esc>T{i
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter>(++)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{temize}<Enter><Enter>(++)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space>(++)<Esc>T{i
autocmd FileType tex inoremap ;t \begin{tabular}<Enter>(++)i<Enter>\end{tabular}<Enter><Enter>(++)<Esc>4kA{}<Esc>
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter>(++)<Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter>(++)<Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter>(++)<Esc>2kf}i
autocmd FileType tex inoremap ;beg \begin{%DELRN%}<Enter>(++)<Enter>\end{%DELRN%}<Enter><Enter>(++)<Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
autocmd FileType tex inoremap ;up \usepackage{}<Space>(++)<Esc>T{i

""".bib
autocmd FileType bib inoremap ;a @article{<Enter><Tab>author<Space>=<Space>"(++)",<Enter><Tab>year<Space>=<Space>"(++)",<Enter><Tab>title<Space>=<Space>"(++)",<Enter><Tab>journal<Space>=<Space>"(++)",<Enter><Tab>volume<Space>=<Space>"(++)",<Enter><Tab>page<Space>=<Space>"(++)",<Enter><Tab>}<Enter>(++)<Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<Enter><Tab>author<Space>=<Space>"(++)",<Enter><Tab>year<Space>=<Space>"(++)",<Enter><Tab>title<Space>=<Space>"(++)",<Enter><Tab>publisher<Space>=<Space>"(++)",<Enter><Tab>}<Enter>(++)<Esc>6kA,<Esc>i
autocmd FileType bib inoremap ;a @article{<Enter><Tab>author<Space>=<Space>"(++)",<Enter><Tab>year<Space><Space>"(++)",<Enter><Tab>title<Space><Space>"(++)",<Enter><Tab>journal<Space><Space>"(++)",<Enter><Tab>volume<Space><Space>"(++)",<Enter><Tab>page<Space><Space>"(++)",<Enter><Tab>}<Enter>(++)<Esc>8kA,<Esc>i

"Latex live preview
autocmd Filetype tex setl updatetime=1000

filetype plugin indent on
