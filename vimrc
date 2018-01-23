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
call plug#end() 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

noremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
inoremap jk <esc>
inoremap JK <esc>
noremap <Tab> :NERDTreeToggle<CR>
noremap ;; :!<CR>
noremap '' :wq<CR>
noremap ,, :set spell!<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let NERDTreeIgnore = ['\.pyc$', '\.o', '\.i']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_check_on_wq = 0
let mapleader = "\<SPACE>"

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

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_autoclose_preview_window_after_insertion = 1

if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
