export OPENJDK_HOME="/opt/homebrew/opt/openjdk/bin"
case ":$PATH:" in
  *":$OPENJDK_HOME:"*) ;;
  *) export PATH="$OPENJDK_HOME:$PATH" ;;
esac
