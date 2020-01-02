# sync-term-cwd.vim

Sync your shell's working directory with Vim.
When you run `cd` command in the shell in Vim's `:terminal`,
this plugin automatically sets the current working directory in Vim too.

# Setup

Add below to your `.bashrc` / `.zshrc`.

```
source (this repository)/macros/synctermcwd.sh
```

See vim help (`:help synctermcwd`) for more configuration.
