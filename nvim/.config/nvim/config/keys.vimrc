" map Leader
let mapleader = ","

" When in normal mode and I hit Enter,
" then save file please
nmap <CR> :write<CR>

" buffer keys
nnoremap <Leader>q :BD<CR>
nnoremap <Leader>Q :bd<CR>
nnoremap <Leader>QQ :BufOnly<CR>

if system('uname -s') == "Darwin\n"
  " control+alt for mac...
  nnoremap <C-A-h> :bp<CR>
  nnoremap <C-A-l> :bn<CR>
else
  " navigate buffer with alt + h/l
  nnoremap <A-h> :bp<CR>
  nnoremap <A-l> :bn<CR>
endif

" new buffer/tab
nnoremap <Leader>e :enew<CR>

" window keys
nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>

" Shortcut for copying to/from System Clipboard
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Function keys

nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <F5> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <F6> :set hlsearch!<CR>
nnoremap <F7> :UndotreeToggle<CR>
" vim paste mode toggle (for fixing indentation issues when pasting text)
nnoremap <F8> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" nnoremap <F8> :Geeknote<CR>
" indent whole file according to syntax rules
" noremap <F9> gg=G

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
" Folding {{{
set nofoldenable		  " disable folding
" set foldlevelstart=3	" start folding then we are 10 blocks deep
set foldnestmax=5		  " 10 nested fold max
set foldmethod=indent	" fold based on indent level
"}}}

" colorizer
nmap <Leader>tc :ColorToggle<CR>

" for vnoremap selection search
vnoremap / y/<C-R>"<CR>
