" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree' , {'on': 'NERDTreeToggle'}  "Lazy Loading Example
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/NERDCommenter'
Plug 'Shougo/neocomplete.vim'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
call plug#end()

set nocompatible
set nowrap
set expandtab       
set smarttab        
set showcmd         
set number          
set showmatch       
set showmode
set smarttab
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2
set autoindent
set textwidth=80
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
"set t_Co=256
set cmdheight=1
set encoding=utf-8

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=v         " Enable the use of the mouse.

set exrc
set secure

filetype plugin indent on
syntax on
set grepprg=grep\ -nH\ $*

let g:tex_flavor = "latex"
let g:vimtex_fold_enabled=0
let g:vimtex_view_method='zathura'
let g:vimtex_latexmk_continuous=1
let g:vimtex_quickfix_mode=0
let g:vimtex_latexmk_build_dir='build'
let g:vimtex_latexmk_options='-pdf'

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

"NerdTREE
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
