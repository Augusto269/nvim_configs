set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set showmatch
set relativenumber
set laststatus=2
call plug#begin('~/.vim/plugged')
"Thems"
Plug 'morhetz/gruvbox'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
"Ide
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Git
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
"Formater
Plug 'sbdchd/neoformat'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


autocmd BufWritePre *.js Neoformat
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"Ignoreu

let g:NERDTreeIgnore = ['^node_modules$']
