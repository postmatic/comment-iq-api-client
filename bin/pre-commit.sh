#!/bin/sh
# Only commit sane code

git stash -q --keep-index

composer run sniff

RESULT=$?
git stash pop -q
[ $RESULT -ne 0 ] && exit 1
exit 0
