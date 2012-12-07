#!/bin/sh

# Change all instances of ‘inuit’ to whatever you have named your
# project’s stylesheet, `cd` to the directory in which this file lives and
# simply run `sh watch.sh`.

# No minification
#sass --watch inuit.scss:inuit.css --style expanded

sass --watch inuit.scss:inuit.min.css --style compressed

exit 0
