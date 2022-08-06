" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
	Plug 'itchyny/lightline.vim'              " Lightline statusbar
	Plug 'morhetz/gruvbox'
	Plug 'fratajczak/one-monokai-vim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
call plug#end()

"SETTINGS

syntax on

"Theme
"colo one-monokai
colo gruvbox
let g:lightline={ 'colorscheme':'wombat'}
set termguicolors

"LoC
set number 
set cursorline
"highlight clear cursorline
"highlight clear CursorLineNR 
"highlight CursorLineNR ctermbg=blue

"Clipboard
set clipboard=unnamedplus

"Mouse use
set mouse=a

"Encoding
set encoding=utf-8

"Searching
set incsearch

"Indentation
set smartindent
set tabstop=4
set shiftwidth=4

"Kill annoying bell AND flashing
set visualbell
set t_vb=

"Other 
set noswapfile
set laststatus=2
set noshowmode

"REMAPS
nnoremap <C-N> :Texplore<CR>
