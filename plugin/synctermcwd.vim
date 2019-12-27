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

command! -nargs=1 -complete=dir SyncTermCwdConditionalCd call s:conditional_cd(<q-args>)

function! s:conditional_cd(cwd) abort
  let termwins = len(filter(tabpagebuflist(), {-> getbufvar(v:val, '&buftype') ==# 'terminal'}))
  if exists(':tcd') !=# 2      " :tcd is not available
    let cd = 'lcd'
  elseif termwins > 1          " 2 or more than terminal windows in this tab-page
    let cd = 'lcd'
  elseif haslocaldir() ==# 1   " window has set a local directory
    let cd = 'lcd'
  elseif haslocaldir() ==# 2   " tab-page has set a local directory
    let cd = 'tcd'
  else                         " default :cd command
    let cd = 'tcd'
  endif
  execute cd a:cwd
endfunction

let &cpo = s:save_cpo
