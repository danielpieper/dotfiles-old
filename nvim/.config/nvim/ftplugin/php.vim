" PHP Documentor
let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"
nnoremap <leader>dd :call pdv#DocumentWithSnip()<CR>
let g:ale_completion_enabled = 0
let g:ale_php_phpcs_standard = 'PSR-2'
let g:ale_php_phpmd_ruleset = 'phpmd.xml'
