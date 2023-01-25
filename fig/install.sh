#!/bin/sh
#
# Fig (https://fig.io)

if test ! $(which fig)
then
  echo "  Installing Fig"
  brew install fig
  echo "Run `fig doctor` to enable accessibility requirements"
fi

exit 0
