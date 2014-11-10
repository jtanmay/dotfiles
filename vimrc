" Shortcut to rapidly toggle `set list`
" p
nmap <leader>l :set list!<CR>
set nocompatible

" check autocmd is available, and based on that enabled/disbale settings
" if has("autocmd")
	" Enable file type detection
"	filetype on
" endif

 syntax enable
 set background=light
" colorscheme solarized
colorscheme monokai

" Runtime path for ctrlp plugin
" set runtimepath^=~/.vim/bundle/ctrlp.vim

" Automaticall load NERDTree
" autocmd vimenter * NERDTree

" add NERDTree to runtime
" set runtimepath+=~/.vim/bundle/nerdtree

" add PHP Documentor Plugin
" set runtimepath+=~/.vim/bundle/pdv

" plathgen plugin which updates runtime environment to .vim/bundle and checks on plugin in there
 execute pathogen#infect()

 syntax on
 filetype plugin indent on


" PHP Documentor Settings
 let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
 nnoremap <buffer> <C-I> :call pdv#DocumentWithSnip()<CR>

" Set VIM editor settings
 set softtabstop=4
 set shiftwidth=4
 set tabstop=4
 set expandtab
"
