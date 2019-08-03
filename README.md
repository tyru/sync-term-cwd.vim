# sync-term-cwd.vim

Sync your shell's working directory with Vim.
When you run `cd` command in the shell in Vim's `:terminal`,
this plugin automatically sets the current working directory in Vim too.

# Setup

Add below to your `.bashrc` / `.zshrc`.

```
source (repo)/macros/synctermcwd.sh`
```

# Change tabpage's current working directory

Add below to your `.vimrc` if you want to set current working directory of current tabpage.

```vim
let g:synctermcwd_cd_command = 'tcd'
```
