
syntax on                       "syntax highlighting, see :help syntax
filetype plugin indent on       "file type detection, see :help filetype
set number                      "display line number
set relativenumber              "display relative line numbers
set path+=**                    "improves searching, see :help path
set noswapfile                  "disable use of swap files
set wildmenu                    "completion menu
set backspace=indent,eol,start  "ensure proper backspace functionality
set undodir=~/.cache/nvim/undo  "undo ability will persist after exiting file
set undofile                    "see :help undodir and :help undofile
"Search
set incsearch                   "see results while search is being typed, see :help incsearch
set hlsearch                    "highlight all pervious search pattern with incsearch
set showmatch                   "display matching bracket or parenthesis
"Format
set smartindent                 "auto indent on new lines, see :help smartindent
set ic                          "ignore case when searching
set colorcolumn=80              "display color when line reaches pep8 standards
set expandtab                   "expanding tab to spaces
set tabstop=4                   "setting tab to 4 columns
set mouse=a
"syntax enable
set cursorline
set showcmd
set omnifunc=syntaxcomplete#Complete "autocomplete built-in Vim (with Ctrl X + Ctrl O)
" Let airline do the work
set noshowmode
"highlight ColorColumn ctermbg=9 "display ugly bright red bar at color column number

"New leader Key
let mapleader=","

" Keybind Ctrl+l to clear search
" nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>

" When python filetype is detected, F5 can be used to execute script
autocmd FileType python nnoremap <buffer> <F5> :w<cr>:exec '!clear'<cr>:exec '!python3' shellescape(expand('%:p'), 1)<cr>

"vim-plug configuration, plugins will be installed in ~/.config/nvim/plugged
call plug#begin('~/.vim/plugged')
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'

" Theme
Plug 'navarasu/onedark.nvim'
" Tree
Plug 'preservim/nerdtree'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
" Syntax
Plug 'sheerun/vim-polyglot'
" Typo
Plug 'jiangmiao/auto-pairs'
"Comment
Plug 'scrooloose/nerdcommenter'
" Add/Drop
" Plug 'mhinz/vim-signify'

" Git
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme onedark

" Enable Tab / Shift Tab to cycle completion options
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_enable_fuzzy_match = 1
set completeopt=menuone,noinsert,noselect

" Setup for vim-devicon
"set encoding=UTF-8

"Nerdcomenter -> Remember <leader> + c + <space>
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Airline config
let g:airline#extensions#tabline#enabled = 1
nnoremap <A-,> :bnext<CR>
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"Setup Maps in NerdTree
let g:NERDTreeQuitOnOpen=1 "Close NerdTree after open file"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Open vertical terminal
nnoremap <leader>tv :botright vnew <Bar> :terminal<cr>
" Open horizontal terminal
nnoremap <leader>th :botright new <Bar> :terminal<cr>

" Move in split screen
map <C-h> <C-W>h
map <C-l> <C-W>l
