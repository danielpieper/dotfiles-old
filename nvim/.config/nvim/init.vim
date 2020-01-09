"  Vim plug
" https://github.com/junegunn/vim-plug
" ------------------------------------------------------------------------------

let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)

" Eye Candy
" ------------------------------------------------------------------------------
Plug 'https://github.com/joshdick/onedark.vim' " Atom OneDark
Plug 'https://github.com/ryanoasis/vim-devicons' " look at beauty icons
Plug 'https://github.com/psliwka/vim-smoothie' " Smooth scrolling for Vim done right🥤


" tmux
" ------------------------------------------------------------------------------
if executable('tmux')
  Plug 'https://github.com/christoomey/vim-tmux-navigator' " navigate from vim to tmux windows
  Plug 'https://github.com/tmux-plugins/vim-tmux-focus-events' " Restore `FocusLost` and `FocusGained` events in tmux
endif


" Finding and replacing
" ------------------------------------------------------------------------------
Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim' " A command-line fuzzy finder
Plug 'https://github.com/jremmen/vim-ripgrep' " Use RipGrep in Vim and display results in a quickfix list
Plug 'https://github.com/haya14busa/incsearch.vim' " incrementally highlights ALL pattern matches unlike default 'incsearch'.
" Plug 'mileszs/ack.vim'
" Plug 'mhinz/vim-grepper'


" File management
" ------------------------------------------------------------------------------
" Plug 'https://github.com/scrooloose/nerdtree' " The NERDTree is a file system explorer for the Vim editor.
" Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags.
Plug 'https://github.com/mbbill/undotree' " Undo visualise


" Buffers
" ------------------------------------------------------------------------------
Plug 'https://github.com/moll/vim-bbye' " Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
Plug 'https://github.com/schickling/vim-bufonly' " Delete all the buffers except the current buffer.


" Language pack
" ------------------------------------------------------------------------------
Plug 'https://github.com/sheerun/vim-polyglot' " A collection of language packs for Vim.


" Editing
" ------------------------------------------------------------------------------
Plug 'tpope/vim-repeat' " Repeat.vim remaps . in a way that plugins can tap into it
Plug 'tpope/vim-commentary' " for multiline became to comment lines
Plug 'https://github.com/junegunn/goyo.vim' " Distraction-free writing in Vim.
" Plug 'tpope/vim-speeddating' " a Ctrl-a/Ctrl-x command to increment / decrement a line of Date
" Plug 'https://github.com/junegunn/vim-easy-align' " indent multi text ( easy align : so many feature )


" Text objects
" ------------------------------------------------------------------------------
Plug 'https://github.com/chaoren/vim-wordmotion' " More useful word motions for Vim
Plug 'https://github.com/wellle/targets.vim' " Vim plugin that provides additional text objects: ci' to (cut in single quote), also support (I l L a A n N) for (In Last last in  .. next Next)
Plug 'https://github.com/kana/vim-textobj-user' " create your own text objects without pain, eg. call textobj#user#plugin('datetime', { ...
Plug 'https://github.com/kana/vim-textobj-function' " Text objects for functions, build error ??!
Plug 'https://github.com/kana/vim-textobj-entire' " Text objects for functions, build error ??!
Plug 'https://github.com/kana/vim-textobj-line' " Text objects for functions, build error ??!
Plug 'https://github.com/kana/vim-textobj-fold' " provides text objects for fold , eg. yaz to yank arround fold
Plug 'https://github.com/kana/vim-textobj-indent' " Text objects for indented blocks of lines, eg. y- yank of blocks of lines
" Plug 'https://github.com/easymotion/vim-easymotion' " EasyMotion provides a much simpler way to use some motions in vim.


" General
" ------------------------------------------------------------------------------
Plug 'https://github.com/myusuf3/numbers.vim' " intelligently toggling line numbers
Plug 'https://github.com/editorconfig/editorconfig-vim' " EditorConfig plugin for Vim http://editorconfig.org
Plug 'tpope/vim-unimpaired' " [a cursor to previous a, ]x cursor to next x
Plug 'https://github.com/ntpeters/vim-better-whitespace' " Better whitespace highlighting for Vim
Plug 'https://github.com/tpope/vim-eunuch' " Vim sugar for the UNIX shell commands that need it the most.


" Refactoring
" ------------------------------------------------------------------------------
Plug 'tpope/vim-surround' " ysiw' | ds{ds)  provides mappings to easily delete, change and add such surroundings in pairs


" Copy/Paste behaviour
" ------------------------------------------------------------------------------
" Plug 'https://github.com/svermeulen/vim-easyclip' " Stop everything saving to a register and instead rely on just `m` for cut
Plug 'https://github.com/ConradIrwin/vim-bracketed-paste' " Improve pasting code from the clipboard


" Sessions
" ------------------------------------------------------------------------------
Plug 'https://github.com/mhinz/vim-startify' " This plugin provides a start screen for Vim and Neovim.


" Status bar
" ------------------------------------------------------------------------------
Plug 'https://github.com/vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plug 'https://github.com/edkolev/tmuxline.vim' " tmux airline theming


" Tabs
" ------------------------------------------------------------------------------
" Plug 'gcmt/taboo.vim' " Make managing tabs easier with rename, add, delete etc
" Plug 'troydm/zoomwintab.vim' " Allow a window to be fully viewed. Useful when multiple splits are in use


" Snippets
" ------------------------------------------------------------------------------
Plug 'https://github.com/honza/vim-snippets' " snippets for various programming languages
" Plug 'https://github.com/sirver/UltiSnips' " UltiSnips - The ultimate snippet solution for Vim.


" Git
" ------------------------------------------------------------------------------
Plug 'https://github.com/tpope/vim-fugitive' " fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'https://github.com/shumphrey/fugitive-gitlab.vim' " An extension to fugitive.vim for gitlab support
Plug 'https://github.com/junegunn/gv.vim' " A git commit browser.
Plug 'https://github.com/mhinz/vim-signify' " Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).


" HTML/CSS
" ------------------------------------------------------------------------------
Plug 'https://github.com/lilydjwg/colorizer', { 'on': 'ColorToggle' } " #aaa to Colorize
Plug 'https://github.com/alvan/vim-closetag' " Automatically add a closing HTML tag
Plug 'https://github.com/tpope/vim-haml' " Better Scss highlighting than polyglot
" Plug 'https://github.com/mattn/emmet-vim' " provides support for expanding abbreviations similar to emmet


" JavaScript
" ------------------------------------------------------------------------------
Plug 'https://github.com/pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']} " Vastly improved Javascript indentation and syntax support in Vim.
Plug 'https://github.com/moll/vim-node', {'for': ['javascript', 'javascript.jsx', 'json']} " gf to jump to source and module files, :Nedit {module_name} to edit the main file of a module


" Autocomplete & linting
" ------------------------------------------------------------------------------
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}} " Coc is an intellisense engine for vim8 & neovim.
Plug 'https://github.com/w0rp/ale' " ALE (Asynchronous Lint Engine) is a plugin for providing linting in NeoVim 0.2.0+ and Vim 8 while you edit your text files.


" Docs
" ------------------------------------------------------------------------------
Plug 'https://github.com/rhysd/devdocs.vim' " This is a Vim plugin for devdocs, which is an awesome multiple API documentation service. You can open and search devdocs from Vim.


" Testing & debugging
" ------------------------------------------------------------------------------
Plug 'https://github.com/tpope/vim-dispatch' " Asynchronous build and test dispatcher
Plug 'https://github.com/janko/vim-test' " Run your tests at the speed of thought
Plug 'https://github.com/vim-vdebug/vdebug' " Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)


" Golang
" ------------------------------------------------------------------------------
" Plug 'https://github.com/fatih/vim-go' " Go development plugin for Vim


" Terraform
" ------------------------------------------------------------------------------
Plug 'https://github.com/juliosueiras/vim-terraform-completion' " Terraform file autocomplete


call plug#end()

" Shortcut for checking if a plugin is loaded
function! s:has_plugin(plugin)
  let lookup = 'g:plugs["' . a:plugin . '"]'
  return exists(lookup)
endfunction


"  General config
" ------------------------------------------------------------------------------

if s:has_plugin('onedark.vim')
  let g:onedark_color_overrides = {
  \ "black": {"gui": "#1D1F21", "cterm": "235", "cterm16": "0" },
  \ "cursor_grey": { "gui": "#1f2123", "cterm": "170", "cterm16": "5" },
  \}
end
set background=dark
" TODO: check if required
" make background transparent
hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
hi LineNr ctermbg=234
silent! colorscheme onedark

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags='li\|p'

" Set <space> to leader
let mapleader=','
let maplocalleader='\'

" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Allow editing of binary files
" Must be set before expandtab
" http://stackoverflow.com/a/26901774
set binary

" Enable term 24 bit colour
set termguicolors

" Make it obvious where 80 characters is
" set textwidth=80

" Use ``indent`` based folding
set foldmethod=indent
" Disable all folds on file open until `zc` or `zM` etc is used
set nofoldenable

" With :set hidden, opening a new file when the current buffer has unsaved
" changes causes files to be hidden instead of closed
set hidden

" Allow tab names to be remembered in sessions
set sessionoptions+=tabpages,globals

" Briefly move the cursor to the matching brace
set showmatch

" Lazyredraw attempts to solve Vim lag by reducing the amount of
" processing required. When enabled, any action that is not typed
" will not cause the screen to redraw
set lazyredraw

" Don't display the current mode (Insert, Visual, Replace)
" in the status line. This info is already shown in the
" Airline status bar.
set noshowmode

" Stop vim trying to syntax highlight long lines, typically found in minified
" files. This greatly reduces lag yet is still wide enough for large displays
set synmaxcol=500

" Highlight current line
set cursorline

" Indent using two spaces.
set softtabstop=2
set tabstop=2
set shiftwidth=2

" Smoother scrolling when moving horizontally
set sidescroll=1

" Use spaces, not tabs
set expandtab

" Don't scan included files. The .tags file is more performant.
set complete-=i
set complete+=kspell " TODO: what is kspell?

" Prevent autocomplete options opening in scratchpad
set completeopt-=preview

" This is set low so that gitgutter updates reasonably quickly
" https://github.com/airblade/vim-gitgutter#when-are-the-signs-updated
set updatetime=300 " TODO: is this required as i don't use gitgutter?

" Don't wrap lines
set nowrap

" Keep the cursor in the same place when switching buffers
set nostartofline

" Show col and line position in the statusbar
set ruler

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Ignore case of searches
set ignorecase

" If a pattern contains an uppercase letter
" it is case sensitive, otherwise, it is not
set smartcase

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
" set clipboard=unnamed
set clipboard^=unnamed,unnamedplus

" Spell check
set spelllang=en

" Where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" For autocompletion, complete as much as you can.
set wildmode=list:longest,full

" don't add extra space after ., !, etc. when joining
set nojoinspaces

" Eliminate delay when switching modes
set ttimeoutlen=0

" Enable mouse with tmux
set mouse=a

" Auto save changes before switching buffer
set autowrite

" Add the g flag to search/replace by default
set gdefault

" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/backups
set directory=.,$TEMP " Stop the swp file warning

if has("persistent_undo")
  set undodir=~/.config/nvim/undo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

" Always show sign column for git icons
set signcolumn=yes

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Disable error bells
set noerrorbells

" Don't show the intro message when starting Vim
" Also suppress several 'Press Enter to continue messages' especially
" with FZF
set shortmess=aoOtIWcFs

" Show the current mode
set title

" Show the (partial) command as it’s being typed
set showcmd

" Line numbers
set number
set relativenumber

" Path and file extensions to look for when using `gf`
set suffixesadd+=.css,index.css,.js,.jsx,.scss " TODO: what is this doing?
set path+=.,src " TODO: what is this for?

" https://damien.pobel.fr/post/configure-neovim-vim-gf-javascript-import/
function! LoadMainNodeModule(fname)
  let nodeModules = "./node_modules/"
  let packageJsonPath = nodeModules . a:fname . "/package.json"
  if filereadable(packageJsonPath)
    return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
  else
    return nodeModules . a:fname
  endif
endfunction

set includeexpr=LoadMainNodeModule(v:fname)

" Start scrolling before cursor gets to the edge
set scrolloff=3
set sidescrolloff=15
set sidescroll=1

" Remap annoying mistakes to something useful
" TODO: check if i use this?
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Qa q
cnoreabbrev Qall qall


" Key mappings
" ------------------------------------------------------------------------------

" Save file
nnoremap <silent><cr> :silent wa<cr>

" gf but in a vsplit
" TODO: what does this do?
nnoremap gv :vertical wincmd f<cr>

" Force j and k to work on display lines
" TODO: what does this do?
nnoremap k gk
nnoremap j gj
vnoremap k gk
vnoremap j gj

" Disable arrow keys
noremap <right> <Nop>
noremap <left> <Nop>
noremap <up> <Nop>
noremap <down> <Nop>

" Delete line but preserve the space
nnoremap dD S<Esc>

" Make `Y` work from the cursor to the end of line
nnoremap Y y$

" Reformat whole file and move back to original position
nnoremap g= gg=G``

" Automatically jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Split
noremap <silent><leader>x :split<cr>
noremap <silent><leader>v :vsplit<cr>

" Switch buffers
" TODO: this collides with high/low in file
" nnoremap <silent>H :silent bp<CR>
" nnoremap <silent>L :silent bn<CR>

" Spellcheck
nnoremap <F6> :setlocal spell!<cr>
" TODO: check if i need this:
" nnoremap <F6> :set hlsearch!<CR>

" Clear search (highlight)
nnoremap <silent> <F2> :noh<cr>

" Automatically 'gv' (go to previously selected visual block)
" after indenting or unindenting.
vnoremap < <gv
vnoremap > >gv

" Allow sourcing of vimrc
nnoremap <leader>y :source $MYVIMRC<cr>

if exists(':tnoremap')
  " Allow movement seamlessly with terminals
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif

"  Plugin config
" ------------------------------------------------------------------------------

if s:has_plugin('vim-smoothie')
  let g:smoothie_use_default_mappings = v:false

  nmap <C-d> <Plug>(SmoothieDownwards)
  nmap <C-u> <Plug>(SmoothieUpwards)
endif

if s:has_plugin('vim-textobj-entire')
  let g:textobj_entire_no_default_key_mappings = 1
  xmap aE <Plug>(textobj-entire-a)
  omap aE <Plug>(textobj-entire-a)
  xmap iE <Plug>(textobj-entire-i)
  omap iE <Plug>(textobj-entire-i)
endif

if s:has_plugin('ultisnips')
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
  let g:UltiSnipsSnippetDirectories=["UltiSnips"]
endif

if s:has_plugin('vim-easyclip')
  let g:EasyClipUseSubstituteDefaults = 0
  let g:EasyClipUsePasteDefaults = 0
  let g:EasyClipAutoFormat = 1
  " nmap <c-y> <plug>EasyClipSwapPasteForward
  " nmap <c-h> <plug>EasyClipSwapPasteBackwards
  nmap s <plug>SubstituteOverMotionMap
  xmap s <plug>XEasyClipPaste
  imap <c-v> <plug>EasyClipInsertModePaste
  nmap M <Plug>MoveMotionEndOfLinePlug
  " Place a mark (m taken by easyclip)
  nnoremap gm m
endif

if s:has_plugin('undotree')
  nnoremap <F5> :UndotreeToggle<cr>
  let g:undotree_SplitWidth = 45
endif

if s:has_plugin('vim-javascript')
  let g:javascript_plugin_flow=1
  let g:javascript_plugin_jsdoc=1
endif

if s:has_plugin('goyo.vim')
  function! s:goyo_enter()
    if executable('tmux') && strlen($TMUX)
      silent !tmux set status off
      silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    set noshowmode
    set noshowcmd
    set norelativenumber
    set scrolloff=999

    autocmd InsertEnter * setlocal nonumber norelativenumber
    autocmd InsertLeave * setlocal norelativenumber nonumber
  endfunction

  function! s:goyo_leave()
    if executable('tmux') && strlen($TMUX)
      silent !tmux set status on
      silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    set showcmd
    set relativenumber
    set scrolloff=3

    autocmd InsertEnter * setlocal number norelativenumber nocursorline
    autocmd InsertLeave * setlocal relativenumber cursorline
  endfunction

  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
endif

if s:has_plugin('vim-better-whitespace')
  autocmd BufEnter * EnableStripWhitespaceOnSave
  highlight ExtraWhitespace ctermbg=red guibg = #e06c75
  " let g:strip_only_modified_lines=1
  let g:strip_whitespace_confirm=0
endif

if s:has_plugin('vim-polyglot')
  let g:polyglot_disabled = ['markdown', 'scss']
  let g:vue_disable_pre_processors = 1
  let g:jsx_ext_required = 0
  let g:csv_move_folds = 1
endif

if s:has_plugin('vim-closetag')
  let g:closetag_filenames = "*.html,*.js,*.jsx"
  let g:closetag_close_shortcut = ''
endif

if s:has_plugin('vim-bbye')
  nnoremap <leader>q :silent Bdelete<CR>
  nnoremap <leader>Q :silent Bwipeout<CR>
endif

if s:has_plugin('vim-bufonly')
  nnoremap <leader>QQ :BufOnly<cr>
endif

if s:has_plugin('gv.vim')
  nnoremap <c-g> :GV!<cr>
endif

if s:has_plugin('fzf.vim')
  let g:fzf_height = '40%'
  let g:fzf_commits_log_options = '--color --graph --pretty=format:"%C(yellow)%h%Creset -%C(auto)%d%Creset %s %C(bold blue)(%cr) %Cred<%an>%Creset" --abbrev-commit'

  nnoremap <a-p> :Files<cr>
  nnoremap <c-p> :GFiles<cr>
  nnoremap <c-space> :Buffers<cr>
  nnoremap <c-t> :Lines<cr>
  nnoremap <c-f> :Ag<space>
  nnoremap <silent> <BS> :History:<cr>

  " Allow options to be passed to FZF :Ag
  " Probably quite hacky until a better solution appears
  " https://github.com/junegunn/fzf.vim/issues/92#issuecomment-191248596
  function! s:ag_with_opts(arg, bang)
    let tokens  = split(a:arg)
    let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
    let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
    call fzf#vim#ag(query, '--hidden --ignore .git', a:bang ? {} : {'down': '40%', 'options': '--layout=default'})
  endfunction

  command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --pretty --no-heading '.shellescape(<q-args>), 1, <bang>0)
  command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
  command! -bang -nargs=? -complete=dir GFiles call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

  if has('autocmd')
    autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)
  endif

  let $FZF_DEFAULT_OPTS='--layout=reverse'
  let g:fzf_layout = { 'window': 'call FloatingFZF()' }

  function! FloatingFZF()
    let buf = nvim_create_buf(v:false, v:true)
    call setbufvar(buf, '&signcolumn', 'no')

    let height = float2nr(40)
    let width = float2nr(160)
    let horizontal = float2nr((&columns - width) / 2)
    let vertical = 5

    let opts = {
          \ 'relative': 'editor',
          \ 'row': vertical,
          \ 'col': horizontal,
          \ 'width': width,
          \ 'height': height,
          \ 'style': 'minimal'
          \ }

    call nvim_open_win(buf, v:true, opts)
  endfunction

" Customize fzf colors to match your color scheme
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Boolean'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }
endif

if s:has_plugin('vim-airline')
  if s:has_plugin('onedark.vim')
    let g:airline_theme = 'onedark'
  endif

  let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
  let g:airline#extensions#tabline#buffers_label = ''
  " let g:airline#extensions#tabline#fnamemod = ':t' " Show the filename
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#show_tab_nr = 0
  let g:airline#extensions#tabline#buffer_nr_show = 0
  let g:airline#extensions#tabline#show_close_button = 0

  let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_symbols.linenr = ''
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.readonly = ''

  let g:airline#extensions#quickfix#quickfix_text = 'QF'
  let g:airline#extensions#quickfix#location_text = 'LL'

  " disable unused extensions (performance)
  let g:airline#extensions#bufferline#enabled = 0
  let g:airline#extensions#capslock#enabled   = 0
  let g:airline#extensions#csv#enabled        = 0
  let g:airline#extensions#ctrlspace#enabled  = 0
  let g:airline#extensions#eclim#enabled      = 0
  let g:airline#extensions#hunks#enabled      = 0
  let g:airline#extensions#nrrwrgn#enabled    = 0
  let g:airline#extensions#promptline#enabled = 0
  let g:airline#extensions#syntastic#enabled  = 0
  let g:airline#extensions#taboo#enabled      = 0
  let g:airline#extensions#tagbar#enabled     = 0
  let g:airline#extensions#virtualenv#enabled = 0
  let g:airline#extensions#whitespace#enabled = 0
endif

if s:has_plugin('vim-commentary')
  nnoremap <c-_> :Commentary<cr>
  vnoremap <c-_> :Commentary<cr>
  " Terraform commentary
  autocmd FileType terraform setlocal commentstring=#%s
endif

if s:has_plugin('nerdtree')
  nnoremap <silent><f3> :NERDTreeToggle<cr>
  nnoremap <silent><leader><f3> :NERDTreeFind<cr>
  let g:NERDTreeWinPos = 'right'
  let g:NERDTreeQuitOnOpen = 1
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMinimalUI = 1
endif

if s:has_plugin('coc.nvim')
  let g:coc_global_extensions = [
        \ 'coc-json',
        \ 'coc-html',
        \ 'coc-css',
        \ 'coc-phpls',
        \ 'coc-yaml',
        \ 'coc-snippets',
        \ 'coc-go',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-jira-complete',
        \ 'coc-explorer',
        \ 'coc-lists',
        \ ]
  " TODO: check if coc extensions are used:
        " \ 'coc-tabnine',
        " \ 'coc-project',
        " \ 'coc-highlight',
        " \ 'coc-yank',
        " \ 'coc-git',
        " \ 'coc-python',
        " \ 'coc-tslint-plugin',
        " \ ]
  " Remap keys for gotos
  nmap <silent> <leader>gd <Plug>(coc-definition)
  nmap <silent> <leader>gt <Plug>(coc-type-definition)
  nmap <silent> <leader>gi <Plug>(coc-implementation)
  nmap <silent> <leader>gv :vsplit<cr> <Plug>(coc-implementation)
  nmap <silent> <leader>gr <Plug>(coc-references)
  nmap <silent> <leader>rr <Plug>(coc-rename)
  nmap <silent> <leader>gl <Plug>(coc-codelens-action)
  nmap <silent> <leader>ga <Plug>(coc-codeaction)

  " Use `[c` and `]c` to navigate diagnostics
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  " Using CocList
  nnoremap <silent> <space>l  :<C-u>CocList<cr>
  " Show all diagnostics
  " nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
  " Manage extensions
  " nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
  " Show commands
  " nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document
  nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
  " Search workspace symbols
  " nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  " nnoremap <silent> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  " nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list
  " nnoremap <silent> <space>r  :<C-u>CocListResume<CR>
  " nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

  " nnoremap <a-p> :Files<cr>
  " nnoremap <c-p> :CocList --number-select --auto-preview files<cr>
  " nnoremap <c-p> :GFiles<cr>
  " nnoremap <c-t> :Lines<cr>
  " nnoremap <c-space> :CocList --number-select buffers<cr>
  " nnoremap <c-f> :Ag<space>
  " nnoremap <silent> <BS> :CocList --number-select cmdhistory<cr>

  hi CocCodeLens guifg=#3a445e

  " Remap for rename current word
  nmap <leader>rn <Plug>(coc-rename)

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " nmap <silent> <leader>p :Prettier<cr>
  " command! -nargs=0 Prettier :CocCommand prettier.formatFile
  " nmap <silent> <leader>uf :CocList snippets<cr>

  " Use tab for trigger completion with characters ahead and navigate.
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_snippet_next = '<tab>'

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
        \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " documentation popup
  nnoremap <silent> K :call <SID>show_documentation()<CR>
  function! s:show_documentation()
    if &filetype == 'vim'
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  " coc-explorer:
  nnoremap <silent><f3> :CocCommand explorer<CR>
endif

if s:has_plugin('ale')
  let g:ale_completion_enabled = 0
  let g:ale_php_phpcs_standard = 'PSR12'
  let g:ale_php_phpmd_ruleset = 'phpmd.xml'
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 1
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_filetype_changed = 1
  let g:ale_lint_on_insert_leave = 0
  let g:ale_disable_lsp = 1
  let g:ale_maximum_file_size = 80000 " 80kb?
  let g:ale_linters_explicit = 1
  let g:ale_linters = {
        \ 'php': ['phpcs', 'phpmd'],
        \ 'go': ['gopls', 'gofmt', 'golint', 'golangci-lint'],
        \ 'sh': ['shell'],
        \ 'js': ['eslint'],
        \ 'jsx': ['eslint'],
        \}
  let g:ale_go_golangci_lint_options = '--fast'
  let g:ale_fixers = {
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \ 'php': ['php_cs_fixer'],
        \ 'go': ['gofmt'],
        \ }
  let g:ale_fix_on_save=1
  let g:ale_fix_on_save_ignore = {
        \ 'php': ['php_cs_fixer'],
        \}

  nnoremap <Leader>ff :ALEFix<CR>
endif

if s:has_plugin('colorizer')
  " disable colorizer at startup
  let g:colorizer_startup = 0
  let g:colorizer_nomap = 1
endif

if s:has_plugin('vim-startify')
  let g:startify_session_dir = '~/.config/nvim/session'
  let g:startify_session_autoload = 1
  let g:startify_session_delete_buffers = 1
  let g:startify_change_to_vcs_root = 1
  let g:startify_session_persistence = 1
  let g:startify_change_to_dir = 1

  let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
endif

if s:has_plugin('vim-test')
  nmap <silent> <leader>tt :TestNearest<CR>
  nmap <silent> <leader>tf :TestFile<CR>
  nmap <silent> <leader>ts :TestSuite<CR>
  nmap <silent> <leader>tl :TestLast<CR>
  nmap <silent> <leader>tv :TestVisit<CR>

  function! PersonioTransform(cmd) abort
    let pod = 'kubectl get pods --selector="app.kubernetes.io/name=web" -o name'
    return 'kubectl exec $('.pod.') -c fpm-ssh -- '.a:cmd
  endfunction

  function! VagrantTransform(cmd) abort
    let vagrant_project = get(matchlist(s:cat('Vagrantfile'), '\vconfig\.vm.synced_folder ["''].+[''"], ["''](.+)[''"]'), 1)
    return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
  endfunction

  let g:test#custom_transformations = {'personio': function('PersonioTransform'), 'vagrant': function('VagrantTransform')}
  let g:test#transformation = 'personio'
  " make test commands execute using dispatch.vim
  let test#strategy = "dispatch"
endif

if s:has_plugin('vim-devicons')
  " after a re-source, fix syntax matching issues (concealing brackets):
  if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
  endif
endif

if s:has_plugin('devdocs.vim')
  nmap <leader>K <Plug>(devdocs-under-cursor)
endif

if s:has_plugin('editorconfig-vim')
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
endif

if s:has_plugin('vdebug')
  let g:vdebug_keymap = {
        \ "run" : "<leader><F5>",
        \ "run_to_cursor" : "<leader><F9>",
        \ "step_over" : "<leader><F2>",
        \ "step_into" : "<leader><F3>",
        \ "step_out" : "<leader><F4>",
        \ "close" : "<leader><F6>",
        \ "detach" : "<leader><F7>",
        \ "set_breakpoint" : "<leader>bb",
        \ "get_context" : "<leader><F11>",
        \ "eval_under_cursor" : "<leader><F12>",
        \ "eval_visual" : "<leader>e",
        \ }

    if !exists('g:vdebug_options')
      let g:vdebug_options = {}
    endif
    " let g:vdebug_options.ide_key = "xdebug"
    let g:vdebug_options.path_maps = {
          \ "/var/www/html": "/Users/daniel.pieper/projects/personio"
          \ }
    hi default DbgCurrentLine term=reverse ctermfg=White ctermbg=Red guifg=#282c34 guibg=#be5046
    hi default DbgCurrentSign term=reverse ctermfg=White ctermbg=Red guifg=#282c34 guibg=#be5046
    hi default DbgBreakptLine term=reverse ctermfg=White ctermbg=Green guifg=#282c34 guibg=#98c379
    hi default DbgBreakptSign term=reverse ctermfg=White ctermbg=Green guifg=#282c34 guibg=#98c379
endif

if s:has_plugin('vim-wordmotion')
  let g:wordmotion_prefix = '<Leader>'
endif

"BEGIN work
"if s:has_plugin('fugitive-gitlab.vim')
"  source $HOME/.config/nvim/fugitive-gitlab.vim
"endif
"END work

" Output the current syntax group
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>


" Automatic commands
" ------------------------------------------------------------------------------

" Open help in a vertical split
augroup vimrc-help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | setlocal relativenumber | endif
augroup END

augroup file-types
  autocmd!

  " Override some syntaxes so things look better
  autocmd BufNewFile,BufRead *.html setlocal syntax=swig
  autocmd BufNewFile,BufRead *.sss setlocal syntax=stylus
  autocmd BufNewFile,BufRead *.snap,*.es6, setlocal filetype=javascript.jsx
  autocmd BufNewFile,BufRead *stylelintrc,*eslintrc,*babelrc,*jshintrc setlocal syntax=json
  autocmd BufNewFile,BufRead *.css,*.pcss setlocal syntax=scss filetype=scss
  autocmd BufNewFile,BufRead *.cshtml setlocal filetype=cshtml
  autocmd BufNewFile,BufRead *.vue setlocal filetype=vue.html.javascript.css

  " Wrap text and turn on spell for markdown files
  autocmd BufNewFile,BufRead *.md setlocal wrap linebreak spell filetype=markdown

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-

  " Use JS snippets in TS
  autocmd FileType typescript,typescript.tsx call UltiSnips#AddFiletypes('javascript.typescript')
augroup END

" Periodically check for file changes
set autoread
augroup checktime
  autocmd!
  autocmd FocusGained,BufEnter * :silent! checktime " https://vi.stackexchange.com/a/13092
  " autocmd CursorHold * silent! checktime
augroup END

" Resize splits when vim changes size (like with tmux opening/closing)
augroup auto-resize
  autocmd!
  autocmd VimResized * wincmd =
augroup END

" Autocomplete
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup endif
