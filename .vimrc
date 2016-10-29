set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" USR ADDED
" the nerd tree
Plugin 'scrooloose/nerdtree'
" Nice colors
Plugin 'altercation/vim-colors-solarized'
" Autcomplete {}
Plugin 'townk/vim-autoclose'
" Tag Management
Plugin 'ludovicchabant/vim-gutentags'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

" F10 to open NERDTree
map <silent> <F10> :NERDTreeToggle<CR>
map! <silent> <F10> <ESC>:NERDTreeToggle<CR>

"filetype plugin indent on
syntax on
"set nocompatible
set background=light
set t_Co=256

set autochdir " change to working directory

set pastetoggle=<F3>

" Style for all forms of programming
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set showmatch

" intelligent saving
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i

" Allow for poject dependent .vimrc files
set exrc
set secure

" ctl-backspace delete word
inoremap <C-Q> <C-\><C-O>dB

" backups
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
