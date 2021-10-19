call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

syntax enable

set noerrorbells
set tabstop=4 
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir/
set undofile
set incsearch
set signcolumn=yes
    
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey

colorscheme dracula
highlight Normal ctermbg=234

inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>
inoremap <C-S> <Esc>:w<CR>

nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
nnoremap <C-C> :q<CR>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>
nnoremap <M-Right> :bn<CR>

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

autocmd vimenter * NERDTree
autocmd Filetype tex setl updatetime=1000

let mapleader = " "
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
