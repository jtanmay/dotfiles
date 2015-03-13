" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

set hidden " Allow hidden, unsaved buffers
set notimeout " No command timeout
set ttimeout ttimeoutlen=100 " But timeout on terminal escape codes, like arrow keys
set nocompatible
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set mouse=a " Use mouse support in XTerm/iTerm.

"Power line config
set rtp+=/Users/tjoshi/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
" check autocmd is available, and based on that enabled/disbale settings
" if has("autocmd")
    " Enable file type detection
"   filetype on
" endif
 syntax enable
 set background=dark
 colorscheme solarized
" colorscheme ir_black
" colorscheme blackboard

 set incsearch " Incremental search
 set history=1024 " History size
 set ignorecase " Ignore case by default
 set smartcase " Smart case-sensitivity when searching (overrides ignorecase)
 set autoread " No prompt for file changes outside Vim
"colorscheme monokai

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



" Set VIM editor settings
 set softtabstop=4
 set shiftwidth=4
 set tabstop=4
 set expandtab

" Window Resize. Ctrl+w . And Ctrl+w ,  Both are remapped using submode plugin
call submode#enter_with('window-resize', 'n', '', '<C-w>,', '<C-w><')
call submode#enter_with('window-resize', 'n', '', '<C-w>.', '<C-w>>')
call submode#leave_with('window-resize', 'n', '', '<Esc>')
call submode#map('window-resize', 'n', '', ',', '<C-w><')
call submode#map('window-resize', 'n', '', '.', '<C-w>>')

" PHP codesniffer binary (default = phpcs)
" let g:phpqa_php_cmd = "/usr/local/zend/bin/php"
let g:phpqa_codesniffer_args = "--standard=/Users/tjoshi/bin/ruleset.xml"
" let g:phpqa_codesniffer_cmd='/usr/local/zend/bin/phpcs'
let g:phpqa_codesniffer_autorun = 0

" CTRL+P settings
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_cmd = 'CtrlP pwd'
" PHP Documentor Settings
 let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
 nnoremap <C-i> :call pdv#DocumentWithSnip()<CR>

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

" Extra
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Extra Practice Mappings
"
" Map - to remove line and paste below
noremap - ddp

noremap <Right> <nop>
noremap <Left> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

inoremap jk <esc>
inoremap <esc> <nop>


