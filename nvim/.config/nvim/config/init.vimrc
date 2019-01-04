call plug#begin('~/.config/nvim/plugged')

" for sort these lines
" :'<,'>sort

" general
Plug 'https://github.com/sirver/UltiSnips' " completion ~~  UltiSnips is the ultimate solution for snippets in Vim
Plug 'https://github.com/christoomey/vim-tmux-navigator' " navigate from vim to tmux windows
Plug 'https://github.com/haya14busa/incsearch.vim' " incrementally highlights ALL pattern matches unlike default 'incsearch'.
Plug 'https://github.com/honza/vim-snippets' " snippets for various programming languages
Plug 'https://github.com/cloudhead/neovim-fuzzy.git' " Fuzzy file finding for neovim, via fzy[1].
Plug 'https://github.com/jremmen/vim-ripgrep' " Use RipGrep in Vim and display results in a quickfix list
Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerd tree
Plug 'https://github.com/sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'https://github.com/ervandew/supertab' " super tab
Plug 'https://github.com/ncm2/ncm2' " auto-completion engine
Plug 'https://github.com/roxma/nvim-yarp' " dependency for ncm2
Plug 'https://github.com/ncm2/ncm2-bufword' " auto-completion from current buffer
Plug 'https://github.com/ncm2/ncm2-path' " auto-completion for paths
Plug 'https://github.com/ncm2/ncm2-ultisnips' " auto-completion for snippets
Plug 'https://github.com/ncm2/ncm2-tmux' " auto-completion from other tmux panes
Plug 'ludovicchabant/vim-gutentags' " take care of ctags
Plug 'https://github.com/editorconfig/editorconfig-vim' " EditorConfig plugin for Vim http://editorconfig.org

" editing
Plug 'https://github.com/Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'https://github.com/airblade/vim-gitgutter' " shows a git diff in the 'gutter'
Plug 'junegunn/vim-easy-align' " indent multi text ( easy align : so many feature )
Plug 'mbbill/undotree' " undo tree
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'tpope/vim-commentary' " for multiline became to comment lines
Plug 'tpope/vim-repeat' " Repeat.vim remaps . in a way that plugins can tap into it
Plug 'tpope/vim-speeddating' " a Ctrl-a/Ctrl-x command to increment / decrement a line of Date
Plug 'tpope/vim-surround' " ysiw' | ds{ds)  provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-unimpaired' " [a cursor to previous a, ]x cursor to next x
Plug 'vim-scripts/camelcasemotion' " when w,e,b help cursor stay at camelCaseWord

" eye candy
Plug 'https://github.com/lilydjwg/colorizer', { 'on': 'ColorToggle' } " #aaa to Colorize
Plug 'https://github.com/myusuf3/numbers.vim' " intelligently toggling line numbers
Plug 'https://github.com/vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plug 'https://github.com/vim-airline/vim-airline-themes' " airline theme...
Plug 'https://github.com/edkolev/tmuxline.vim' " tmux airline theming

" colorschemes
Plug 'https://github.com/joshdick/onedark.vim' " Atom OneDark
Plug 'https://github.com/ryanoasis/vim-devicons' " look at beauty icons

" javascript
Plug 'isRuslan/vim-es6' " Write JavaScript ES6 easily with vim. (You need SnipMate or UltiSnips installed. ??)
Plug 'https://github.com/moll/vim-node' " gf to jump to source and module files, :Nedit {module_name} to edit the main file of a module
Plug 'othree/javascript-libraries-syntax.vim' " Supports JavaScript libraries . Should work well with other (ng, react, vue, coffeScript, typeScript...)
Plug 'othree/yajs.vim' " Another JavaScript Syntax file for Vim. Key differences

" text objects
Plug 'glts/vim-textobj-comment' " provides text objects for comments,  looks not works well ??
Plug 'kana/vim-textobj-fold' " provides text objects for fold , eg. yaz to yank arround fold
Plug 'kana/vim-textobj-function' " Text objects for functions, build error ??!
Plug 'kana/vim-textobj-indent' " Text objects for indented blocks of lines, eg. y- yank of blocks of lines
Plug 'kana/vim-textobj-user' " create your own text objects without pain, eg. call textobj#user#plugin('datetime', { ...
Plug 'https://github.com/wellle/targets.vim' " ci' to (cut in single quote), also support (I l L a A n N) for (In Last last in  .. next Next)

" debugging
" Plug 'https://github.com/vim-vdebug/vdebug' " Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)

" html
Plug 'https://github.com/mattn/emmet-vim' " provides support for expanding abbreviations similar to emmet

" css
Plug 'https://github.com/hail2u/vim-css3-syntax' " CSS3 syntax (and syntax defined in some foreign specifications) support for Vim’s built-in
Plug 'https://github.com/othree/csscomplete.vim' " Update the bult-in CSS complete function to latest CSS standard.

" php
Plug 'https://github.com/phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'} " refactoring, introspection tools and auto-completion source
Plug 'https://github.com/phpactor/ncm2-phpactor' " auto-completion from phpactor plugin
Plug 'https://github.com/arnaud-lb/vim-php-namespace' " insert 'use' statements automatically
Plug 'https://github.com/w0rp/ale' " ALE (Asynchronous Lint Engine) is a plugin for providing linting in NeoVim 0.2.0+ and Vim 8 while you edit your text files.
Plug 'https://github.com/tobyS/vmustache' " vmustache is an implementation of the Mustache template system in VIMScript.
Plug 'https://github.com/tobyS/pdv' " PDV - PHP Documentor for VIM - 2

" php lsp
" Plug 'https://github.com/ncm2/ncm2-vim-lsp' " ncm2 adapter for vim-lsp
" Plug 'https://github.com/prabirshrestha/async.vim' " dependency of vim-lsp
" Plug 'https://github.com/prabirshrestha/vim-lsp', {'for': 'php'} " lsp client
" Plug 'https://github.com/felixfbecker/php-language-server', {'do': 'composer update', 'for': 'php'}

" golang
" Plug 'https://github.com/ncm2/ncm2-go' " auto-completion for golang
" Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" terraform
" Plug 'https://github.com/juliosueiras/vim-terraform-completion' " Terraform file autocomplete

call plug#end()
