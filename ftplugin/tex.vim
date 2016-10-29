" Use spellchecking
map <F5> :setlocal spell!<CR>

" LaTeX (rubber) macro for compiling
nnoremap <leader>c :w<CR>:!rubber --inplace --pdf --warn all %<CR>
" View PDF macro; '%:r' is current file's root (base) name.
nnoremap <leader>v :!evince %:r.pdf &> /dev/null &<CR><CR>

" Set tab-space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
