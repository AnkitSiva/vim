set nocompatible

call plug#begin('~/.vim/repos')

	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'davidbeckingsale/writegood.vim'
	Plug 'flazz/vim-colorschemes'
	Plug 'jamessan/vim-gnupg'
	Plug 'metakirby5/codi.vim'
	Plug 'mhinz/vim-startify'
	Plug 'reedes/vim-pencil'
	Plug 'reedes/vim-wordy'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'ryanoasis/vim-devicons'
call plug#end()


let g:airline_powerline_fonts = 3
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

noremap <C-I> :NERDTreeToggle<CR>

let mapleader = "\<SPACE>"
set encoding=utf8
set background=dark
set clipboard=unnamedplus
set foldmethod=syntax
set modeline
set mouse=a
set number
set relativenumber
set ruler
set shiftwidth=2
set showcmd
set showmatch
set showmode
set spellfile=~/cloud.acm.umn.edu/vim/spell/en.utf-8.add
set tabstop=4
set backspace=indent,eol,start

colorscheme Benokai

if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
