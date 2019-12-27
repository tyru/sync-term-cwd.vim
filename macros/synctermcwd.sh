_synctermcwd_ps1() {
  if [ "$VIM_TERMINAL" ]; then
    printf '\e]51;["call","Tapi_SyncTermCwd","%s"]\x07' "$PWD"
  fi
}
PS1="$PS1\$(_synctermcwd_ps1)"
