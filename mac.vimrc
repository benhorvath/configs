set nocompatible

set mouse=a
set clipboard=unnamed

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
set encoding=utf-8

" LATEX-SUITE SETTINGS
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Python syntax
let python_highlight_all=1
syntax on

" Line numbers on
set nu

set tabstop=4

au BufNewFile,BufRead *.py
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

" Clipboard to system clipboard
set clipboard=unnamed

" Powerline
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Highlight 80th line
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif


"""""""""""""""""""""""""""""""""

" VUNDLE PLUGINS

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" PACKAGES

Plugin 'gmarik/vundle'

" LaTeX editing
Plugin 'vim-latex/vim-latex'

" Whitespace finder
Plugin 'bitc/vim-bad-whitespace'

"Bundle 'Valloric/YouCompleteMe'

" Syntax checking
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#                                               
set statusline+=%{SyntasticStatuslineFlag()}                                
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1                                
let g:syntastic_auto_loc_list = 1                                           
let g:syntastic_check_on_open = 1                                           
let g:syntastic_check_on_wq = 0 

"PEP8 checking
Plugin 'nvie/vim-flake8'

Plugin 'altercation/vim-colors-solarized'

" File tree
Plugin 'scrooloose/nerdtree'

" Powerbar 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Note taking
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

" /PLUGINS

filetype plugin indent on

" activate solarized dark
syntax enable
set background=dark
colorscheme solarized
