# completion="$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
completion="/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc"

if test -f $completion
then
  source $completion
fi
