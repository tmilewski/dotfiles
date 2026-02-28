# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A topic-based dotfiles repository (forked from Zach Holman's dotfiles). Each directory is a "topic" (e.g., `git/`, `node/`, `ruby/`) containing related configuration.

## Commands

- **Initial setup:** `script/bootstrap` — sets up git config, symlinks all `*.symlink` files to `$HOME`, installs dependencies
- **Update everything:** `dot` (or `bin/dot`) — pulls latest, sets macOS defaults, updates Homebrew, runs installers
- **Install dependencies only:** `script/install` — runs `brew bundle` then executes all `install.sh` files

## Architecture

### File Convention Within Topics

Each topic directory can contain these special files:

| File | Behavior |
|------|----------|
| `path.zsh` | Loaded **first** — for `$PATH` modifications |
| `*.zsh` (other) | Loaded after path files — general config, aliases, env vars |
| `completion.zsh` | Loaded **last** — after `compinit` runs |
| `*.symlink` | Symlinked to `$HOME/.{filename}` (extension stripped) by `script/bootstrap` |
| `install.sh` | Executed by `script/install` — uses `.sh` to avoid auto-sourcing |

### ZSH Loading Order (`zsh/zshrc.symlink`)

1. `$ZSH` is set to `~/.dotfiles`
2. Source `~/.localrc` (private env vars, not in repo)
3. Source all `**/path.zsh` files
4. Source all other `**/*.zsh` files (except path and completion)
5. Run `compinit`
6. Source all `**/completion.zsh` files

### Key Paths

- `bin/` — added to `$PATH`; contains executable scripts like `dot`, `signed-commits`
- `functions/` — added to zsh `fpath` for autoloaded functions
- `Brewfile` — Homebrew bundle (brews, casks, taps, mas apps)

### Adding a New Topic

Create a directory (e.g., `java/`), add `.zsh` files and they'll be auto-sourced. Add `*.symlink` files and they'll be linked on next bootstrap. Add `install.sh` for one-time setup.

## Git Aliases (defined in `git/aliases.zsh`)

`gl` = pull --prune, `gp` = push origin HEAD, `gs` = status -sb, `gd` = diff, `gc` = commit, `gca` = commit -a, `gac` = add all + commit with message, `gco` = checkout helper
