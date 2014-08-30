" color scheme
syntax enable
set background=dark
colorscheme solarized

" aliases
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
let mapleader = ","
nnoremap ; :
nnoremap <leader>p :set paste!<cr>

" load plugins
execute pathogen#infect()
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1
