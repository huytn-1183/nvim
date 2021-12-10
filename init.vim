call plug#begin('~/.vim/plugged')    
" >>> ALE Asynchronous Lint Engine
Plug 'dense-analysis/ale'
let g:ale_fixers = {    
			\   'javascript': ['prettier', 'eslint'],    
			\   'typescript': ['prettier', 'tslint'],
			\   'typescriptreact': ['prettier', 'tslint'],
			\   'css': ['prettier'],    
			\   'scss': ['prettier'],    
			\   'ruby': ['standardrb', 'rubocop'],    
			\   'python': ['flake8', 'pylint'],    
			\}    
let g:ale_fix_on_save = 0

" >>> vim-code-dark is a dark color scheme for Vim heavily inspired by the look of the Dark+ scheme of Visual Studio Code.

" Plug 'tomasiser/vim-code-dark'    

" >>> Lean & mean status/tabline for vim that's light as air.

Plug 'vim-airline/vim-airline'
" let g:airline_theme = 'codedark'
"
" >>> joshdick/onedark.vim
Plug 'joshdick/onedark.vim'
let g:airline_theme='onedark'
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

 
" >>> Git change support

Plug 'Xuyuanp/nerdtree-git-plugin'

" >>> Javascript support
Plug 'pangloss/vim-javascript'    
source ~/.config/nvim/vim-javascript.vim
Plug 'mxw/vim-jsx'

" >>> Insert or delete brackets, parens, quotes in pair.

Plug 'jiangmiao/auto-pairs'    


" >>> Adds filetype glyphs (icons) to various vim plugins
" required: https://github.com/ryanoasis/nerd-fonts

Plug 'ryanoasis/vim-devicons'    

" Plug 'junegunn/vim-easy-align'    

" >>> Browse GitHub events (user dashboard, user/repo activity) in Vim.
" sudo apt-get install ruby rubygems vim-nox && sudo /usr/bin/gem install json_pure

" Plug 'https://github.com/junegunn/vim-github-dashboard.git'    


" >>> NERDTree    

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }    
nnoremap <C-n> :NERDTree<CR>    
nnoremap <leader>n :NERDTreeFocus<CR>    
nnoremap <C-b> :NERDTreeToggle<CR>    
source ~/.config/nvim/nerdtree.vim
set mouse=a
let g:NERDTreeMouseMode=3


" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }    
" Plug 'fatih/vim-go', { 'tag': '*' }    
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }    

" >>> FZF 

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    
Plug 'junegunn/fzf.vim'    
let g:fzf_action = {    
			\ 'ctrl-t': 'tab split',    
			\ 'ctrl-h': 'split',    
			\ 'ctrl-v': 'vsplit' }    
nnoremap <C-f> :Lines<CR>    
nnoremap <C-p> :Files<CR>    

Plug '~/my-prototype-plugin'    
Plug 'vim-ruby/vim-ruby'    

" >>> This is a massive (in a good way) Vim plugin for editing Ruby on Rails applications.

Plug 'tpope/vim-rails'    


" >>> Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

" Plug 'sindrets/diffview.nvim'
" source ~/.config/nvim/diffview.vim

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }    
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --ts-completer' }
call plug#end()    

set relativenumber   
set encoding=UTF-8    
colorscheme onedark

nnoremap <C-m> :vi ~/.config/nvim/init.vim<CR> 

" call deoplete#custom#source('sources', {
"			\ '_': ['ale'],
"			\})
set tabstop=2
set shiftwidth=2
set softtabstop=2
