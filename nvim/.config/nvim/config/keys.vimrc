" map Leader
let mapleader = ","

" keep backward f search, remapping it to ,;
nnoremap <Leader>; ,

" When in normal mode and I hit Enter,
" then save file please
nmap <CR> :write<CR>

" buffer keys
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>q :bp<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>d :bd!<CR>
" navigate buffer with alt + h/l
nnoremap <A-h> :bp<CR>
nnoremap <A-l> :bn<CR>

" new buffer/tab
nnoremap <Leader>e :enew<CR>

" window keys
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>wx :close<CR>

" Shortcut for copying to/from System Clipboard
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" for commentary
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>
" :7,17Commentary

" multiline moving
" <A-j>  ∆
" <A-k>  ˚
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

" command mode maps
" better command-line window scrolling with <C-P> & <C-N>
" cnoremap <C-p> <Up>
" cnoremap <C-n> <Down>

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" neovim-fuzzy
nnoremap <C-p> :FuzzyOpen<CR>

" Function keys
nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F5> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <F6> :set hlsearch!<CR>
nnoremap <F7> :UndotreeToggle<CR>
" nnoremap <F8> :Geeknote<CR>
" indent whole file according to syntax rules
" noremap <F9> gg=G

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode, use Q for formatting
map Q gq

" relative line numbers
nnoremap <Leader>3 :NumbersToggle<CR>

" snippets
let g:UltiSnipsExpandTrigger="<c-j>"

" remap number increment to C-s (C-a is already in use by tmux)
nmap <C-s> <C-a>

" Word count selection
vnoremap <Leader>w :w !wc -w<CR>

" vim paste mode toggle (for fixing indentation issues when pasting text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" allow ,, for vimsneak
nmap <Leader>, <Plug>SneakPrevious

" camelCase motion settings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" neomake
nmap <Leader><Space>o :lopen<CR>
nmap <Leader><Space>c :lclose<CR>
nmap <Leader><Space>, :ll<CR>
nmap <Leader><Space>n :lnext<CR>
nmap <Leader><Space>p :lprev<CR>

" folding
nmap <Leader>f zf%
" Folding {{{
set nofoldenable			  " disable folding
set foldlevelstart=2	" start folding then we are 10 blocks deep
set foldnestmax=5		  " 10 nested fold max
set foldmethod=indent	" fold based on indent level
"}}}

" ,<tab> for regular tab
inoremap <Leader><Tab> <Space><Space>

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" colorizer
nmap <Leader>tc :ColorToggle<CR>

" for vnoremap selection search
vnoremap / y/<C-R>"<CR>

" Apply php-cs-fixer:
command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
