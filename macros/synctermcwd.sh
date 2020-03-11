if [ "$VIM_TERMINAL" ] && [ "$SYNCTERMCWD_LOADED" ]; then
  _synctermcwd_ps1() {
    printf '\e]51;["call","Tapi_SyncTermCwd","%s"]\x07' "$PWD"
  }
  PS1="\$(_synctermcwd_ps1)$PS1"
fi
