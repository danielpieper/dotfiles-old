syntax on
syntax enable

set hlsearch


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("autocmd")

  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=108

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END

endif " has("autocmd")

" tab stuff
set smarttab
set autoindent
set smartindent


set nrformats-=octal

set ttimeout
set ttimeoutlen=100

" Unix as standard file type
set ffs=unix,dos,mac

" Always utf8
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

set magic " for regular expressions

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

filetype plugin indent on

if system('uname -s') == "Darwin\n"
  " OSX
  let g:python3_host_prog = '/usr/local/bin/python3'
else
  " Linux
  let g:python3_host_prog = '/usr/bin/python3'
endif


" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Function keys

nnoremap <silent> <F3> :NERDTreeToggle<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode, use Q for formatting
map Q gq

" relative line numbers
" nnoremap <Leader>3 :NumbersToggle<CR>

" remap number increment to C-s (C-a is already in use by tmux)
" nmap <C-s> <C-a>

" Word count selection
" vnoremap <Leader>w :w !wc -w<CR>

" override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" folding
" nmap <Leader>f zf%
nmap <Leader>fo zr
nmap <Leader>Fo zm

" colorizer
nmap <Leader>tc :ColorToggle<CR>

" for vnoremap selection search
vnoremap / y/<C-R>"<CR>
