#!/usr/bin/env zsh
set -eo pipefail

[[ -z "$1" ]] && echo "You must specify a commit message! e.g.:\n\n$0 commit message here\n\nExiting..." && exit 1

bundle exec jekyll build
git co main
rsync -a _site/* .
rm -rf _site/
git add -A
git ci --message $@
git log --stat -1
echo "\nIf the commit looks good, then run...\n"
echo "> git push # to publish, then:"
echo "> git co - # to switch to prior branch"
