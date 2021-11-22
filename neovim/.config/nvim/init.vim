" Color scheme
set background=dark
set termguicolors
colorscheme NeoSolarized
 

" Aliases
" Expand %% to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Map cursor keys to next and previous buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>

" Set , as leader key
let mapleader = ","

" Use ,, to toggle to the last buffer
nnoremap <leader><leader> <c-^>

" Map ; to : in normal mode, saves pressing shift to get to command line
nnoremap ; :

" Use ,p to enter paste mode
nnoremap <leader>p :set paste!<cr>

" Map jj to escape, useful for reducing strain
inoremap jj <Esc>

" Use ctrl+p to open fzf (fuzzy finder) files search
nnoremap <C-p> :GFiles<Cr>

" Use ctrl+g to open fzf (fuzzy finder) in-file search with ripgrep
nnoremap <C-g> :Rg<Cr>

" Use ctrl+space to open buffer tree view
nnoremap <C-Space> :Tree<Cr>

" format JSON
com! FormatJSON %!python -m json.tool


" Plugins
" Install vim-plug if missing
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Color scheme
Plug 'iCyMind/NeoSolarized'

" Symbols in left margin showing git diff status
Plug 'airblade/vim-gitgutter'

" Close structures like if blocks automatically with end keyword
Plug 'tpope/vim-endwise'

" Git commands like :Gdiff and :Gblame
Plug 'tpope/vim-fugitive'

" tpop's vim defaults
Plug 'tpope/vim-sensible'

" Status line with current file details
Plug 'bling/vim-airline'

" Tree view of open buggers
Plug 'el-iot/buffer-tree-explorer'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'

Plug 'vim-ruby/vim-ruby'
Plug 'dense-analysis/ale'
Plug 'elmcast/elm-vim'
Plug 'idris-hackers/idris-vim'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'
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

"" Switch to git directory when selecting file in startify
let g:startify_change_to_vcs_root = 1

" Compress view buffer-tree-explorer
let g:buffer_tree_explorer_compress = 1

" settings
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set cul
set laststatus=2
set number
set noswapfile
set exrc
set secure

" Wrap lines while preserving indentation and breaking lines on spaces
set wrap linebreak breakindent

" au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

"" syntax
autocmd BufNewFile,BufRead *.es6 set syntax=javascript
