#!/bin/sh

# No minification
#sass --watch [your-project].scss:[your-project].min.css --style expanded

sass --watch [your-project].scss:[your-project].min.css --style compressed

exit 0