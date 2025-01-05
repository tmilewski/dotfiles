export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

export BUN_BIN=$HOME/.bun/bin
case ":$PATH:" in
  *":$BUN_BIN:"*) ;;
  *) export PATH="$BUN_BIN:$PATH" ;;
esac

export PNPM_HOME=$HOME/Library/pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
