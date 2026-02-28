_gco() {
  words=(git checkout "${words[@]:1}")
  (( CURRENT += 1 ))
  local service=git
  _git
}
compdef _gco gco
