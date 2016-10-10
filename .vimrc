set number	" enables line numbers

set clipboard=unnamed	" allows vim to use the OS clipboard

syntax on	" enables syntax highlighting
colorscheme badwolf

set wildmenu	" visual autocomplete for the command menu
set showmatch	" shows corresponding open/close {[()}]

" search settings:

set incsearch	" search as characters are entered
set hlsearch	" highlight found patterns

" powerline for vim:
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
