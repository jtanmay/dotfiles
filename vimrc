" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" check autocmd is available, and based on that enabled/disbale settings
if has("autocmd")
	" Enable file type detection
	filetype on
endif

 syntax enable
 set background=light
 colorscheme solarized


" Runtime path for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Automaticall load NERDTree
" autocmd vimenter * NERDTree

" add NERDTree to runtime
set runtimepath+=~/.vim/bundle/nerdtree

" plathgen plugin which updates runtime environment to .vim/bundle and checks on plugin in there
execute pathogen#infect()
syntax on
filetype plugin indent on

