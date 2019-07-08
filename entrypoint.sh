#!/bin/bash
set -e

if [ -n "$GIT_USER" ]; then
  git config user.name "$GIT_USER"
fi
if [ -n "$GIT_EMAIL" ]; then
  git config user.email "$GIT_EMAIL"
fi

sh -c "git $*"
