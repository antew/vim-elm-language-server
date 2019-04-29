call ale#Set('elm_ls_executable', 'elm-ls')
call ale#Set('elm_ls_use_global', get(g:, 'ale_use_global_executables', 1))

function! elm_ls#GetRootDir(buffer) abort
  let l:elm_json = ale#path#FindNearestFile(a:buffer, 'elm.json')
  return !empty(l:elm_json) ? fnamemodify(l:elm_json, ':p:h') : ''
endfunction

call ale#linter#Define('elm', {
\   'name': 'elm_ls',
\   'lsp': 'stdio',
\   'executable': {b -> ale#node#FindExecutable(b, 'elm_ls', [
\       'node_modules/.bin/elm-ls',
\   ])},
\   'command': '%e --stdio',
\   'project_root': function('elm_ls#GetRootDir'),
\   'language': 'elm',
\   'initialization_options': {'runtime': 'node'},
\})
