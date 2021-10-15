" this vimrc largely taken from http://dougblack.io/words/a-good-vimrc.html

" colour {{{
syntax enable				" enable syntax processing
colorscheme jellybeans
set colorcolumn=80
" }}}
" spaces/tabs {{{
set tabstop=4				" number of visual spaces per tab
set softtabstop=4			" number of spaces in tab while editing
set shiftwidth=4
set autoindent
set expandtab				" turn <TAB> into spaces
" }}}
" visuals relating to lines {{{
set number				" show line numbers
set cursorline				" highlight current line
set relativenumber
set list                    "highlight trailing whitespace
set listchars=trail:*
" }}}
" random visuals {{{
set showcmd				" show command in bottom bar
filetype indent on			" load filetype-specific indent files
set wildmenu				" visual autocomplete for command menu
set lazyredraw				" redraw only when needed
set showmatch				" highlight matching [{( )}]
" }}}
" search {{{
set incsearch				" search as characters are entered
set hlsearch				" highlight matches
" }}}
" replace {{{
set gdefault                " sets :s with /g by default
" }}}
" folding {{{
set foldenable				" enable folding
set foldlevelstart=10		" open most folds by default
set foldnestmax=10			" 10 nested fold max
set foldmethod=indent       " fold based on indent level
nnoremap <space> za			" za opens/closes fold around current block
" }}}
" movement {{{
nnoremap j gj
nnoremap k gk
set backspace=indent,eol,start " yeah this is movement to me, no regrets
" }}}
" leader shortcuts {{{
let mapleader=","           " leader is comma!
inoremap jj <esc>           " jj is now escape
nnoremap <leader>u :GundoToggle<CR>    " toggle gundo
" }}}
" allows cursor change in tmux mode {{{
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" backups {{{
set backup
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set writebackup
" }}}
" fonts/encoding {{{
set termencoding=utf-8
set encoding=utf-8
" }}}
" vim:foldmethod=marker:foldlevel=0
" flake 8 {{{
" rebind flake8 to f3
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
" run flake8 every time i write a python file
autocmd BufWritePost *.py call flake8#Flake8()
" }}}
" ale {{{
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_fixers = {'python': ['reorder-python-imports', 'autopep8', 'trim_whitespace', 'yapf', 'black', 'add_blank_lines_for_python_control_statements']}
"let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_linters = {'python': ['flake8']}
" }}}
