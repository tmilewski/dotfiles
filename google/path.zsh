filepath="$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"


if test -f $filepath
then
  source $filepath
fi
