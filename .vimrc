" ~*~*~*~*~*~*~*
"    ~/.vimrc   
" *~*~*~*~*~*~*~

set nocompatible 
filetype off

set rtp+=~~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ~~~~~~~~~~~~~~~~
" General settings
" ~~~~~~~~~~~~~~~~

" Enable folding of methods/classes
set foldmethod=indent
set foldlevel=99

" Python PEP8 formatting
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shitftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Mark unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 support
set encoding=utf-8

" YouCompleteMe tweaks
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Syntax highlighting
let python_highlight_all=1
syntax on

" Enable 256 color mode
set t_Co=256

" Line numbering
set nu

" System clipboard
set clipboard=unnamed

" Run NREDTree on startup
autocmd VimEnter * NERDTree

" Cursor in main screen on startup
autocmd VimEnter * wincmd p

" Set colorscheme to zenburn
autocmd VimEnter * colors zenburn

" ~~~~~~~~
" Keybinds
" ~~~~~~~~

" Enable folding with spacebar
nnoremap <space> za

" Move windows with arrow keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ~~~~~~~~~~~~~~~~
" Put plugins here
" ~~~~~~~~~~~~~~~~

" SimplylFold class/method folder
Plugin 'tmhedberg/SimpylFold'

" Auto-indent fixer
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteME auto-complete
Plugin 'Valloric/YouCompleteMe'

" Syntastic syntax check on save
Plugin 'scrooloose/syntastic'

" Vim-flake8 PEP8 checker
Plugin 'nvie/vim-flake8'

" Zenburn color scheme
Plugin 'jnurmine/Zenburn'

" Solarized GUI color scheme
Plugin 'altercation/vim-colors-solarized'

" NERDTree file tree
Plugin 'scrooloose/nerdtree'

" Vim-nerdtree-tabs tabs for NERDTree
Plugin 'jistr/vim-nerdtree-tabs'

" CtrlP super searcher
Plugin 'kien/ctrlp.vim'

" Vim-fugitive simple git commands in vim
Plugin 'tpope/vim-fugitive'

" Powerline status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Vim-bad-whitespace highlights extra whitespace
Plugin 'bitc/vim-bad-whitespace'

" ~*~*~*~*~
" End vimrc
" *~*~*~*~*
call vundle#end()
filetype plugin indent on


