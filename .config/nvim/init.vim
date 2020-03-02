syntax on
set hidden
set number
set ruler
set cursorline
set tabstop=4 shiftwidth=4 expandtab
set encoding=utf8

" tab indentation settings
autocmd FileType typescriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType javascriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType javascript setlocal ts=2 sw=2 sts=0 expandtab

" FZF
nmap <C-p> :GFiles<CR>

" Buffers
nnoremap gb :Buffers<CR>

" General settings
let mapleader=","
inoremap jk <Esc>
cnoremap jk <C-C> 
nmap <leader><Enter> :noh<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Vim Plugs
call plug#begin('~/.config/nvim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
Plug 'mlaursen/vim-react-snippets'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Coc-Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Vim nerdtree syntax highlight
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Vim devicons
set guifont=DejaVuSansMono_Nerd_Font:h14

" Vim-Jsx-Pretty
let g:vim_jsx_pretty_colorful_config = 1

" Ayu Theme settings
let ayucolor="mirage"
colorscheme ayu

" IndentLine settings
let g:indentLine_char='┊'
let g:indentLine_first_char='┊'
let g:indentLine_showFirstIndentLevel=1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" NERD Tree settings
nmap <C-n> :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFind<CR>

" Coc settings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"Fix terminal colors
if exists('+termguicolors')
  set termguicolors
endif
