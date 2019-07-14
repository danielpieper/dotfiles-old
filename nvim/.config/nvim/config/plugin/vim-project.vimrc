let g:project_enable_welcome = 0
let g:project_use_nerdtree = 1
" set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/projects")

" PHP
Project  'artgen'
Project  'fints-api'
Project  'fints-ofx'
Project  'fints-ynab'
Project  'mrcli'
Project  'monica'

" Golang
Project 'mrcli-go'
Project 'document-converter'

" Ansible
Project  'raspberry-ansible'

" Project  '~/.dotfiles', 'dotfiles'
Project  '~/.dotfiles/nvim/.config/nvim/config', 'nvim'
