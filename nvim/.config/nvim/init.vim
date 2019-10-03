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
" Plug 'tpope/vim-speeddating' " a Ctrl-a/Ctrl-x command to increment / decrement a line of Date
" Plug 'https://github.com/junegunn/vim-easy-align' " indent multi text ( easy align : so many feature )


" Text objects
" ------------------------------------------------------------------------------
Plug 'https://github.com/chaoren/vim-wordmotion' " More useful word motions for Vim
Plug 'https://github.com/wellle/targets.vim' " Vim plugin that provides additional text objects: ci' to (cut in single quote), also support (I l L a A n N) for (In Last last in  .. next Next)
Plug 'https://github.com/wkana/vim-textobj-user' " create your own text objects without pain, eg. call textobj#user#plugin('datetime', { ...
Plug 'https://github.com/wkana/vim-textobj-function' " Text objects for functions, build error ??!
Plug 'https://github.com/wkana/vim-textobj-entire' " Text objects for functions, build error ??!
Plug 'https://github.com/wkana/vim-textobj-line' " Text objects for functions, build error ??!
Plug 'https://github.com/wkana/vim-textobj-fold' " provides text objects for fold , eg. yaz to yank arround fold
Plug 'https://github.com/wkana/vim-textobj-indent' " Text objects for indented blocks of lines, eg. y- yank of blocks of lines
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
Plug 'https://github.com/mmoll/vim-node', {'for': ['javascript', 'javascript.jsx', 'json']} " gf to jump to source and module files, :Nedit {module_name} to edit the main file of a module


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










source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/keys.vimrc

source $HOME/.config/nvim/config/plugin/vdebug.vimrc
source $HOME/.config/nvim/config/plugin/vim-bbye.vimrc
source $HOME/.config/nvim/config/plugin/onedark.vimrc
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
