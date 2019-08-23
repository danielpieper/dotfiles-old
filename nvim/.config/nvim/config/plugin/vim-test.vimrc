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
