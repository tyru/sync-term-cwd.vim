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

let &cpo = s:save_cpo
