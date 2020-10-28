set nu!
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'cj/vim-webdevicons'

call vundle#end()
filetype plugin indent on

noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>l
vnoremap <C-s> <Esc>:w<CR>

noremap <C-x> :wq<CR>
inoremap <C-x> <Esc>:wq<CR>l
vnoremap <C-x> <Esc>:wq<CR>

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = ' ▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "left"
autocmd vimenter * wincmd p
let NERDTreeQuitOnOpen = 1

 
"let g:airline_left_sep = ''
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_theme = 'light'
let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1

syntax on
color dracula

