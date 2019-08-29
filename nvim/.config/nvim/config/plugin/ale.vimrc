let g:ale_completion_enabled = 0
let g:ale_php_phpcs_standard = 'PSR12'
let g:ale_php_phpmd_ruleset = 'phpmd.xml'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_disable_lsp = 1
let g:ale_maximum_file_size = 80000 " 80kb?
let g:ale_linters_explicit = 1
let g:ale_linters = {
      \ 'php': ['php', 'phpcs', 'phpmd'],
      \ 'go': ['gopls', 'gofmt', 'golint'],
      \ 'sh': ['shell'],
      \}
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trime_whitespace'],
      \ 'php': ['php_cs_fixer'],
      \ }
