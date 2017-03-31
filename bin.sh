#!/bin/sh

if [[ $1 == 'list' ]]; then
  npm run lsrc
  exit 0
fi

if [[ $1 == 'down' ]]; then
  npm run rcdn
  exit 0
fi

if [[ $1 == 'up' ]]; then
  npm run rcup
  exit 0
fi

if [[ -z $1 ]]; then
  echo "No subcommand passed to dotfiles-marionebl: up, down, list"
  exit 1
fi

echo "$1 is no known subcommand. Use: up, down, list"

