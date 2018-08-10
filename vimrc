"use inconsolata for powerline medium 13px
"GitHub: https://github.com/powerline/fonts
set nocompatible
filetype off
set encoding=utf-8
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'crusoexia/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
call vundle#end()
execute pathogen#infect()
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
map <c-f> :call JsBeautify()<cr>
set expandtab
set tabstop=4
set number
set autoindent

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:ycm_autoclose_preview_window_after_completion=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_args = "--disable=missing-docstring --disable=line-too-long --disable=invalid-name --disable=inconsistent-return-statements --disable=wrong-import-order"
