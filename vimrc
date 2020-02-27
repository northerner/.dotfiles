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
inoremap jj <Esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

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
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'benmills/vimux'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'

Plug 'w0rp/ale'
Plug 'elmcast/elm-vim'
Plug 'idris-hackers/idris-vim'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'slim-template/vim-slim'
call plug#end()

highlight clear SignColumn
set signcolumn=yes
let g:airline#extensions#tabline#enabled = 1

let g:ale_fixers = {
\   'ruby': ['rubocop'],
\   'javascript': ['prettier'],
\   'markdown': ['write-good'],
\}
let g:airline#extensions#ale#enabled = 1

" settings
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set cul
set laststatus=2
set number
set noswapfile
set nowrap
set exrc
set secure

au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

"" syntax
autocmd BufNewFile,BufRead *.es6 set syntax=javascript
