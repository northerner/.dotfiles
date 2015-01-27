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

" vimux commands
" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

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
set nowrap
