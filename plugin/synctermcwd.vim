" vim:foldmethod=marker:fen:
scriptencoding utf-8

if exists('g:loaded_synctermcwd') && g:loaded_synctermcwd
    finish
endif
let g:loaded_synctermcwd = 1
let s:save_cpo = &cpo
set cpo&vim

function! Tapi_SyncTermCwd(_, cwd) abort
  let cd = get(g:, 'synctermcwd_cd_command', 'cd')
  execute cd a:cwd
endfunction

command! -nargs=? -complete=dir SyncTermCwdTabLcd
\   call s:tablocal_lcd(<f-args>)

function! s:tablocal_lcd(...) abort
  if !a:0
    lcd
    return
  endif
  let winid = win_getid()
  try
    execute 'windo lcd' a:1
  finally
    call win_gotoid(winid)
  endtry
endfunction

let &cpo = s:save_cpo
