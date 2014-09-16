"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL
" $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" $ cd ~
" $ wget https://raw.github.com/arnaudleg/vi/master/.vimrc
" $ vi 
" $ :BundleInstall
" $ mkdir ~/.vim/colors
" $ cp ~/.vim/bundle/vim-colorschemes/colors/* ~/.vim/colors
" $ curl -L http://install.ohmyz.sh | sh
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""Vundle"""
set nocompatible  
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


"""NerdCommenter: <leader>cc/cu co/uncomment"""
Bundle 'scrooloose/nerdcommenter'

"""Draculaaaaa"""
Bundle 'zenorocha/dracula-theme'

"""TabLine"""
Bundle 'mkitt/tabline.vim'
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

"""ColorSchemes"""
Bundle 'flazz/vim-colorschemes'

"""FuzzyFinder: <Ctrl>P"""
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

"""Folding: F file/f function"""
Bundle 'vim-scripts/Efficient-python-folding'

"""PowerLine"""
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2

"""NerdTree"""
Bundle 'scrooloose/nerdtree'
nnoremap <leader>e :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode=3
" Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
"au VimEnter *  NERDTree
autocmd BufNew * wincmd l
let NERDTreeWinSize=1

"""GoPlugin"""
Bundle 'fatih/vim-go'

"""JediVim"""
Bundle 'davidhalter/jedi-vim'
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

"""Python-Mode"""
Bundle 'klen/python-mode'
" Keys:
" K     Show python docs
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[    Jump on previous class or function (normal, visual, operator modes)
" ]]    Jump on next class or function (normal, visual, operator modes)
" [M    Jump on previous class or method (normal, visual, operator modes)
" ]M    Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
" Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ["pep8","pyflakes"]
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'
" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
let g:pymode_lint_checkers = ["pep8","pyflakes"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
" colorscheme vividchalk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set number

set guifont=ProggyCleanTT\ 12
set ts=8 et sw=4 sts=4

" Stop that darned noise
set visualbell
" Seriously, shut up!
set noerrorbells
let mapleader=","
set smartindent
set splitbelow
set splitright

" Highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 79
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%79v.*/
    autocmd FileType python set nowrap
augroup END
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Fix copy/paste
set clipboard=unnamed

" Fix backspace
set bs=2

" Easier moving codeblocks: keeps selection
vnoremap < <gv
vnoremap > >gv

" Autoreload vimrc
autocmd! bufwritepost .vimrc source %

" Search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Folding
set nofoldenable
set foldmethod=indent
set foldlevel=99

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Undo
set undolevels=1000 

" Wild Menu
set wildmenu

" Edit my vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Back to normal mode from insert
inoremap jk <esc>

" Tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

set pastetoggle=<leader>v

" Copy file
nnoremap <leader>m ggyG

" Highlight white spaces EOL
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Relative numbers
set rnu

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

function! NumberOff()
  set number!
endfunc

map <leader>r :call NumberToggle()<cr>
map <leader>R :call NumberOff()<cr>

autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" * #        Search current word under cursor normal mode
" Ctrl+n/p   Try complete current word with text in the file
" .          Repeat lasts change in normal mode
" %          Jump to a matching opening or closing parenthesis, 
"            square bracket or a curly brace
" ==         Indent curr line, Visual = indent block
" u/ctrl+R   Undo/Redo
" record     qa in normal mode, q stop recording, replay @a
" t          till ...
" d          motion ...


" ~/.bashrc
" function parse_git_branch () {
"   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
" }
 
" RED="\[\033[0;31m\]"
" YELLOW="\[\033[0;33m\]"
" GREEN="\[\033[0;32m\]"
" NO_COLOR="\[\033[0m\]"
 
" PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
