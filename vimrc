call plug#begin('~/.vim/repos')

	Plug 'davidbeckingsale/writegood.vim'
	Plug 'flazz/vim-colorschemes'
	Plug 'mhinz/vim-startify'
	Plug 'reedes/vim-pencil'
	Plug 'reedes/vim-wordy'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'ryanoasis/vim-devicons'
	Plug 'valloric/youcompleteme'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

map <F2> :echo 'Current time is ' . strftime('%c')<CR>
imap jk <esc>
imap JK <esc>
map <Tab> :NERDTreeToggle<CR>
map ;; :!<CR>
map '' :wq<CR>

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
set spellfile=~/cloud.acm.umn.edu/vim/spell/en.utf-8.add
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set syntax=on

colorscheme Tomorrow-Night

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_autoclose_preview_window_after_insertion = 1

if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
