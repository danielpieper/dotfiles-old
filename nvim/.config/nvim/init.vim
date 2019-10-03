"  Vim plug
" https://github.com/junegunn/vim-plug
" ------------------------------------------------------------------------------

let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)

" Eye Candy
" ------------------------------------------------------------------------------
Plug 'https://github.com/joshdick/onedark.vim' " Atom OneDark
Plug 'https://github.com/ryanoasis/vim-devicons' " look at beauty icons


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
Plug 'https://github.com/scrooloose/nerdtree' " The NERDTree is a file system explorer for the Vim editor.
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags.
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
Plug 'https://github.com/svermeulen/vim-easyclip' " Stop everything saving to a register and instead rely on just `m` for cut
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
Plug 'https://github.com/fatih/vim-go' " Go development plugin for Vim


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
let mapleader=' '
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
set textwidth=80

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
set clipboard=unnamed

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

" update files if for example git branch changes
set autoread
au FocusGained,BufEnter * :checktime " https://vi.stackexchange.com/a/13092

" Automatically make splits equal in size
autocmd VimResized * wincmd =

" open help in vertical split
autocmd FileType help wincmd L

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
nnoremap <silent><leader>w :silent wa<cr>

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

" Press enter for newline without insert
nnoremap <cr> o<esc>
" but don't effect command line mode
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd CmdwinLeave * nnoremap <cr> o<esc>

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
  nmap s <plug>SubstituteOverMotionMap
  xmap s <plug>XEasyClipPaste
  imap <c-v> <plug>EasyClipInsertModePaste
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
endif

if s:has_plugin('vim-polyglot')
  let g:polyglot_disabled = ['markdown', 'scss']
  let g:vue_disable_pre_processors = 1
  let g:jsx_ext_required = 0
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






source $HOME/.config/nvim/config/general.vimrc

source $HOME/.config/nvim/config/plugin/vdebug.vimrc
source $HOME/.config/nvim/config/plugin/vim-airline.vimrc
source $HOME/.config/nvim/config/plugin/coc.vimrc
source $HOME/.config/nvim/config/plugin/ale.vimrc
source $HOME/.config/nvim/config/plugin/colorizer.vimrc
source $HOME/.config/nvim/config/plugin/nerdtree.vimrc
source $HOME/.config/nvim/config/plugin/editorconfig-vim.vimrc
source $HOME/.config/nvim/config/plugin/delimitmate.vimrc
source $HOME/.config/nvim/config/plugin/vim-startify.vimrc
source $HOME/.config/nvim/config/plugin/vim-devicons.vimrc
source $HOME/.config/nvim/config/plugin/vim-test.vimrc
source $HOME/.config/nvim/config/plugin/vim-commentary.vimrc
source $HOME/.config/nvim/config/plugin/vim-easy-align.vimrc
source $HOME/.config/nvim/config/plugin/fzf.vimrc
source $HOME/.config/nvim/config/plugin/vim-fugitive.vimrc
source $HOME/.config/nvim/config/plugin/devdocs.vimrc
"BEGIN work
"source $HOME/.config/nvim/config/plugin/fugitive-gitlab.vimrc
"END work
