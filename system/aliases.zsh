# eza overrides for ls
if (( $+commands[eza] )); then
  alias ls="eza -F"
  alias l="eza -lah"
  alias ll="eza -l"
  alias la="eza -a"
elif (( $+commands[gls] )); then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi
