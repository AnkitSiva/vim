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
	Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
"   Plug 'vim-latex/vim-latex'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-fugitive'
call plug#end() 

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'luna'
let NERDTreeIgnore = ['\.pyc$', '\.o', '\.i', '\.class', '\.gch']
"let g:polyglot_disabled = ['latex']
let g:startify_bookmarks = [{'a':'~/.vim/vimrc'}, {'s':'~/.zshrc'}, {'d':'~/CS_4540/'}, {'f':'~/CS_4510/'}, {'g':'~/Research/'}, {'h':'~/Research/'}]
let g:Tex_ViewRule_pdf = '/Applications/Preview.app'

noremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
inoremap jj <esc>
inoremap JJ <esc>
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
set matchtime=0
set showmode
set shiftwidth=4
set expandtab
set tabstop=4
set backspace=indent,eol,start
set path+=**
set wildmenu
set tags=tags;/
syntax on
filetype plugin indent on

set t_Co=256
colorscheme Tomorrow-Night

if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

" To close vim when nerdTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
