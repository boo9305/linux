set number
set ts=2
set shiftwidth=2
set expandtab
set hlsearch
set smartindent
set autoindent
set cindent


highlight Pmenu ctermbg=blue
hi Search ctermbg=white ctermfg=black


syntax on

let mapleader=','
map t :tabnew

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

nnoremap a <C-w>w
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTree<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>

nnoremap <C-n> :bp<CR>
nnoremap <C-m> :bn<CR>
"nnoremap <C-X> :bp <BAR> bd #<Enter>
imap <expr> <C-c>  emmet#expandAbbrIntelligent("\<C-c>")
nnoremap <C-G> :TagbarToggle<CR>


let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_nr_format = '%s:'

"let g:ycm_server_python_interpreter = '/usr/bin/python3'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { "c" : { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


let g:closetag_filenames = '*.html, *.js'
let g:closetag_filetypes = 'html, js'

let g:markdown_fenced_languages = ['html', 'js']
let g:jsx_ext_required = 0

let g:jedi#popup_on_dot = 0

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'raimondi/delimitmate'
Plugin 'The-NERD-tree'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'davidhalter/jedi-vim'
call vundle#end()
filetype plugin indent on
"Plugin 'preservim/nerdcommenter'
