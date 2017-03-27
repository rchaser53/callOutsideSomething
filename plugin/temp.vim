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
  \   ['open', '/Applications/Visual Studio Code.app/' ],
  \   {'callback': function('g:KKK')})
endfunction

  "\   {'out_cb': function('g:KKK')})
  "   ['npm', 'run', 'lint:nyan'],
function g:KKK(ch, msg)
  echo a:msg
endfunction

"function TimerTest()
"  let tempTimer = timer_start(1000, function('PPP'))
"endfunction
