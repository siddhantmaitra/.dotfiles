let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')	
	Plug 'itchyny/lightline.vim'              " Lightline statusbar
	Plug 'morhetz/gruvbox'
	Plug 'fratajczak/one-monokai-vim'
call plug#end()

"SETTINGS

syntax on

set termguicolors
let g:lightline={ 'colorscheme':'wombat'}
colo one-monokai
"LoC
set number 
"set cursorline
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

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

"REMAPS
nnoremap <C-N> :Texplore<CR>
