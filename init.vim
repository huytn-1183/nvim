call plug#begin('~/.vim/plugged')    

" >>> Dark powered asynchronous completion framework for neovim/Vim8
" pip3 install --user pynvim
" pip3 install --user --upgrade pynvim
" :UpdateRemotePlugins

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" >>> deoppet dark powered neo-snippet
" pip3 install --user pynvim
" :UpdateRemotePlugins

Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }

" >>> ALE Asynchronous Lint Engine
Plug 'dense-analysis/ale'
let g:ale_fixers = {    
			\   'javascript': ['prettier', 'eslint'],    
			\   'css': ['prettier'],    
			\   'scss': ['prettier'],    
			\   'ruby': ['standardrb', 'rubocop'],    
			\   'python': ['flake8', 'pylint'],    
			\}    
let g:ale_fix_on_save = 1    

" >>> vim-code-dark is a dark color scheme for Vim heavily inspired by the look of the Dark+ scheme of Visual Studio Code.

Plug 'tomasiser/vim-code-dark'    

" >>> Lean & mean status/tabline for vim that's light as air.

Plug 'vim-airline/vim-airline'
let g:airline_theme = 'codedark'
 
" >>> Git change support

Plug 'Xuyuanp/nerdtree-git-plugin'

" >>> Javascript support

Plug 'pangloss/vim-javascript'    
" source ~/.config/nvim/vim-javascript.vim

" >>> Insert or delete brackets, parens, quotes in pair.

Plug 'jiangmiao/auto-pairs'    

" >>> This is a massive (in a good way) Vim plugin for editing Ruby on Rails applications.

Plug 'tpope/vim-rails'    

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

" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }    
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }    
" Plug 'fatih/vim-go', { 'tag': '*' }    
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }    

" >>> FZF 

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    
Plug 'junegunn/fzf.vim'    
let g:fzf_action = {    
			\ 'ctrl-t': 'tab split',    
			\ 'ctrl-h': 'split',    
			\ 'ctrl-v': 'vsplit' }    
nnoremap <C-l> :Lines<CR>    
nnoremap <C-f> :Files<CR>    

Plug '~/my-prototype-plugin'    
Plug 'vim-ruby/vim-ruby'    

" >>> Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

" Plug 'sindrets/diffview.nvim'
" source ~/.config/nvim/diffview.vim

Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
call plug#end()    

set relativenumber   
set encoding=UTF-8    
colorscheme codedark

nnoremap <C-p> :vi ~/.config/nvim/init.vim<CR> 

call deoplete#custom#source('sources', {
			\ '_': ['ale'],
			\})
