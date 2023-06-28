# Easily spoof your MAC address in macOS!
#
# https://github.com/feross/spoof

if test ! $(which spoof)
then
  if test $(which npm)
  then
    sudo npm install spoof -g
  fi
fi
