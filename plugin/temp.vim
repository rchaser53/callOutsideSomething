"if !exists('g:keyMappingPaths')
"  let g:keyMappingPaths = []
"endif
"
"if len(g:keyMappingPaths) == 0
"   call add(g:keyMappingPaths, $HOME.'/.vimrc')
"endif

function! s:handler(ch, msg) abort
  caddexpr a:msg
  cwindow
endfunction

"call setqflist([])
"let s:job = job_start(
"\   ['git', 'grep', '-n', 'word'],
"\   {'out_cb': function('s:handler')})
function Nyan()
  let s:job = job_start(
  \   ['npm', 'run', 'lint:nyan'],
  \   {'out_cb': function('g:KKK')})
endfunction

function g:KKK(ch, msg)
  echo 23
endfunction

"function TimerTest()
"  let tempTimer = timer_start(1000, function('PPP'))
"endfunction
