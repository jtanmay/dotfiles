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
