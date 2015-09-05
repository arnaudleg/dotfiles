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
" brew install ctags

" iterm
" ^^^^^^

" curl -L http://install.ohmyz.sh | sh
" https://github.com/philduffy/seti-iterm

" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" fzf
set rtp+=/usr/local/Cellar/fzf/HEAD


" vundle
" ^^^^^^

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" tagbar
" ^^^^^

Bundle 'majutsushi/tagbar'
autocmd BufEnter *.go nested TagbarOpen

" nerdtree
" ^^^^^^^^
Bundle 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
set laststatus=2

 " powerline
 " ^^^^^^^^^

Bundle 'powerline/powerline'

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

let g:ctrlp_working_path_mode = 'ra'

Bundle 'fisadev/vim-ctrlp-cmdpalette'

set wildignore+=*/tmp/*,*.a,*.so,*.swp,*.zip,*/bin/*     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|bin)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
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

" tabline
" ^^^^^^^

Bundle 'mkitt/tabline.vim'
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

