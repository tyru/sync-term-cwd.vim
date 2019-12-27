# sync-term-cwd.vim

Sync your shell's working directory with Vim.
When you run `cd` command in the shell in Vim's `:terminal`,
this plugin automatically sets the current working directory in Vim too.

# Setup

Add below to your `.bashrc` / `.zshrc`.

```
source (this repository)/macros/synctermcwd.sh
```

**Recommended setting:** Put below setting to your `.vimrc`.  This sets Vim current
directory local to tab-page (1 terminal window) or window (2 or more terminal
windows) conditionally.

```vim
let g:synctermcwd_cd_command = 'SyncTermCwdConditionalCd'
```

Or always change tab-page's current directory:
(`:tcd` command is added by [Vim 8.1.1218](https://github.com/vim/vim/commit/00aa069db8132851a91cfc5ca7f58ef945c75c73))

```vim
let g:synctermcwd_cd_command = 'tcd'
```

Default is:

```vim
let g:synctermcwd_cd_command = 'cd'
``
