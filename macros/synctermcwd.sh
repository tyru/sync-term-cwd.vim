cd() {
  builtin cd "$@" || return $?
  if [ "$VIM_TERMINAL" ]; then
    printf '\e]51;["call","Tapi_SyncTermCwd","%s"]\x07' "$PWD"
  fi
}
