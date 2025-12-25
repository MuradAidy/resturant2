#!/usr/bin/env bash
set -e

MSG="${1:-update}"
BRANCH="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo main)"

cd "$(dirname "$0")"

if [ ! -d ".git" ]; then
  git init
  git branch -M "$BRANCH" || true
fi

git add -A

if git diff --cached --quiet; then
  echo "No changes to push."
  exit 0
fi

git commit -m "$MSG"

if git remote get-url origin >/dev/null 2>&1; then
  git pull --rebase origin "$BRANCH" || true
  git push -u origin "$BRANCH"
  echo "Pushed "
else
  echo "origin not set. Add it like:"
  echo "git remote add origin <REPO_URL>"
fi
