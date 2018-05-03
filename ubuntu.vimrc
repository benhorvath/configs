set nocompatible

" Remap ESC key to capslock, and unmap it on exit
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
set encoding=utf-8

" Copy and paste via mouse  -- hold cntrl while selecting for copy
set mouse=r

" Show line numbers
set nu

" Formatting
let python_highlight_all=1
syntax on

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
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
set clipboard=unnamedplus

" Powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
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
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" PACKAGES

Plugin 'gmarik/vundle'

" Whitespace finder
Plugin 'bitc/vim-bad-whitespace'

Bundle 'Valloric/YouCompleteMe'

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

" Solarized colors
Plugin 'altercation/vim-colors-solarized'

" File tree
Plugin 'scrooloose/nerdtree'

" Powerbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" /PLUGINS

filetype plugin indent on
