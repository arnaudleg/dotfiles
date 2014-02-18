set nocompatible  
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" comments <leader>cc, <leader>cu
Bundle 'scrooloose/nerdcommenter'


Bundle 'mkitt/tabline.vim'
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

Bundle 'flazz/vim-colorschemes'

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'


" install bundles
" fuzzy-finder <Ctrl-P>
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'

" Folding
" f fold fun F fold file
Bundle 'vim-scripts/Efficient-python-folding'

" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2

" nerdtree
Bundle 'scrooloose/nerdtree'
nnoremap <leader>e :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode=3
" Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
"au VimEnter *  NERDTree
autocmd BufNew * wincmd l
let NERDTreeWinSize=1
" jedi-vim (autocomplete better than rope of python-mode)
Bundle 'davidhalter/jedi-vim'
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

" python-mode
Bundle 'klen/python-mode'
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ["pep8","pyflakes"]
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

let g:pymode_lint_checkers = ["pep8","pyflakes"]


" default
syntax on
filetype plugin indent on

set guifont=ProggyCleanTT\ 12
set ts=8 et sw=4 sts=4
"set mouse=a
" Stop that darned noise
set visualbell
" Seriously, shut up!
set noerrorbells
let mapleader=","
set smartindent
set splitbelow
set splitright
"set paste
" highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" ui ~/.vim/colors: wget http://slinky.imukuppi.org/zenburn/zenburn.vim
set t_Co=256
colorscheme vividchalk

" fix copy/paste
set clipboard=unnamed

" fix backspace
set bs=2

" easier moving codeblocks
vnoremap < <gv
vnoremap > >gv

"set cc=80
"highlight ColorColumn ctermbg=10

" autoreload vimrc
autocmd! bufwritepost .vimrc source %

" python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

set nofoldenable

set foldmethod=indent
set foldlevel=99

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

set undolevels=1000 

set wildmenu

" edit my vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" back to normal mode from insert
inoremap jk <esc>

set number

" tabs
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

" copy file
nnoremap <leader>m ggyG

" tips
" * # search curr word under cursors normal mode
" CTRL+N/+P try complete curr word with text in the file (forward/backward)
" . repeats lasts change in normal mode
" %  jump to a matching opening or closing parenthesis, square bracket or a curly brace
" == indent curr line, Visual = indent block
" u undo CTRL+R redo
" record: press qa in normal mode - q stop recording - replay @a
" t: till - d+motion
