filetype plugin indent on

if system('uname -s') == "Darwin\n"
  " OSX
  let g:python3_host_prog = '/usr/local/bin/python3'
else
  " Linux
  let g:python3_host_prog = '/usr/bin/python3'
endif

" make background transparent
hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
hi LineNr ctermbg=234

" only start lsp when opening php files
" au filetype php LanguageClientStart
" Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" ncm2
" enable ncm2 for all buffer
autocmd BufEnter * call ncm2#enable_for_buffer()

" note that must keep noinsert in completeopt, the others is optional
set completeopt=noinsert,menuone,noselect

" supress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c



" delimitMate options
let delimitMate_expand_cr=1

" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" vim-sneak settings
hi SneakPluginTarget ctermfg=black ctermbg=181818

" javascript libraries syntax
let g:used_javascript_libs = 'vue' " underscore,react,chai, more to see -> /othree/javascript-libraries-syntax.vim

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1

  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1

" ale (eslint)
let g:ale_completion_enabled = 0
let g:ale_php_phpcs_standard = 'PSR-2'
" set nocompatible
" filetype off
" let &runtimepath.=',~/.config/nvim/plugged/ale'
" filetype plugin on
" silent! helptags ALL

" vim-devicons
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set guifont=DroidSansMono\ Nerd\ Font\ Mono:h11
let g:airline_powerline_fonts = 1

" NERDTree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeQuitOnOpen = 1

" vim-json
hi! def link jsonKeyword Identifier
let g:vim_json_syntax_conceal = 1

" vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
" let g:vue_disable_pre_processors = 1

" For php tab space
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype blade setlocal ts=2 sw=2 sts=0 expandtab

" Terraform commentary
autocmd FileType terraform setlocal commentstring=#%s

" Supertab completion tab direction
let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
