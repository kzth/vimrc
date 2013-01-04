"ウインドウサイズの変更

function ChangeWindowBigSize()
  let &columns=150
  let &lines=50
endfunction

function ChangeWindowSmallSize()
  let &columns=95
  let &lines=35
endfunction

function ChangeWindowSize(...)
  if a:0 == 2
	let &columns=a:1
	let &lines=a:2
  else
	if &columns <= 95 || &lines <= 35
	  call ChangeWindowBigSize()
	elseif &columns >= 150 || &lines >= 50
	  call ChangeWindowSmallSize()
	endif
  endif
endfunction

nnoremap <F5>w :call ChangeWindowSize()<CR>
command -nargs=* ChangeW :call ChangeWindowSize(<f-args>)
