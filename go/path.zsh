prefix="$(brew --prefix golang)"

export GOPATH=$prefix
export GOROOT="$prefix/libexec"
export PATH="$prefix/bin:$PATH"



