" color scheme
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" aliases
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
let mapleader = ","
nnoremap ; :
nnoremap <leader>p :set paste!<cr>
map <leader>ba :1,300 bd!<cr>

" plugins
execute pathogen#infect()
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1
let g:airline#extensions#tabline#enabled = 1

" settings
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set cul
set laststatus=2
set number
set noswapfile
