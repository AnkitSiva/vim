" The following block of code is to auto-install the Vim-Plug plugin manager
" when vim is opened for the first time
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/repos')

	Plug 'davidbeckingsale/writegood.vim'
	Plug 'flazz/vim-colorschemes'
	Plug 'mhinz/vim-startify'
	Plug 'reedes/vim-pencil'
	Plug 'reedes/vim-wordy'
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'ryanoasis/vim-devicons'
        Plug 'sheerun/vim-polyglot'
        Plug 'lervag/vimtex'
call plug#end() 

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let NERDTreeIgnore = ['\.pyc$', '\.o', '\.i']
let g:polyglot_disabled = ['latex']
let g:startify_bookmarks = ['~/.vim/vimrc', '~/.zshrc', '~/CS_3511/', '~/CS_2340/', '~/Research/']

let mapleader = "\\"

noremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
inoremap jk <esc>
inoremap JK <esc>
noremap <Tab> :NERDTreeToggle<CR>
noremap ;; :!<CR>
noremap '' :wq<CR>
noremap ,, :set spell!<CR>
noremap <leader>- :w<CR>

set statusline+=%#warningmsg#
set statusline+=%*
set encoding=utf8
set background=dark
set spelllang=en

if $TMUX == ''
    set clipboard+=unnamed
endif

set modeline
set mouse=n
set number
set relativenumber
set ruler
set showcmd
set showmatch
set showmode
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
syntax on

colorscheme Tomorrow-Night

if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
