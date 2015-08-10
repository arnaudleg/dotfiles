" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" vim settings
" ^^^^^^^^^^^^

" cd ~
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" wget https://raw.github.com/arnaudleg/vi/master/.vimrc
" vi
" :BundleInstall
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh --clang-completer

" iterm
" ^^^^^^

" curl -L http://install.ohmyz.sh | sh
" https://github.com/philduffy/seti-iterm

" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" vundle
" ^^^^^^

set nocompatible  
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" colorscheme
" ^^^^^^^^^^^

Bundle 'trusktr/seti.vim'

 " powerline
 " ^^^^^^^^^

Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1


" go
" ^^

Bundle 'fatih/vim-go'
Bundle 'Valloric/YouCompleteMe'

au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>d :tab split <CR>:exe "GoDef"<CR>

let g:godef_same_file_in_same_window = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_fmt_command = "goimports"

" nerdcommenter: <leader>cc/cu
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Bundle 'scrooloose/nerdcommenter'

" fuzzy finder: <Ctrl>P
" ^^^^^^^^^^^^^^^^^^^^^

Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" syntax
" ^^^^^^

syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set number

" noise
" ^^^^^

set visualbell
set noerrorbells
let mapleader=","
set smartindent
set splitbelow
set splitright

" highlight excess line length
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
match OverLength /\%120v.\+/

" autoload
" ^^^^^^^^

set autoread

" relative numbers
" ^^^^^^^^^^^^^^^^

set rnu

" backup
" ^^^^^^

set nobackup
set nowritebackup
set noswapfile
set paste

" tabs
" ^^^^

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" search
" ^^^^^^

set hlsearch
set incsearch
set ignorecase
set smartcase

" backspace
" ^^^^^^^^^

set backspace=indent,eol,start
