# sync-term-cwd.vim

Sync your shell's working directory with Vim.
When you run `cd` command in the shell in Vim's `:terminal`,
this plugin automatically sets the current working directory in Vim too.

# Setup

Add below to your `.bashrc` / `.zshrc`.

```
source (repo)/macros/synctermcwd.sh`
```

# Change windows' directories in only current tabpage

Add below to your `.vimrc` if you want to set current working directories only
in windows of current tabpage.

```vim
let g:synctermcwd_cd_command = 'SyncTermCwdTabLcd'
```

`:SyncTermCwdTabLcd {path}` is almost same as `:windo lcd {path}`, but:
* It does not change the current window
* It does not execute `:lcd {path}` if `:SyncTermCwdDisableLcd` is executed on the buffer

## `:SyncTermCwdDisableLcd`, `:SyncTermCwdEnableLcd`

If `:SyncTermCwdDisableLcd` is executed on a buffer,
`:lcd {path}` is not executed on the buffer.
`:SyncTermCwdEnableLcd` resets disabled buffer.
