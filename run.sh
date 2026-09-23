#!/usr/bin/env bash
set -e
export PATH="$HOME/.local/bin:$PATH"

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Cách sử dụng: ./run.sh <URL> <GOAL>"
  echo ""
  echo "Ví dụ:"
  echo "  ./run.sh https://en.wikipedia.org/wiki/Main_Page 'Find and open the article about Alan Turing'"
  echo "  ./run.sh https://news.ycombinator.com 'Open the top story with more than 100 comments'"
  echo "  ./run.sh https://www.google.com 'Search for artificial intelligence news and click the first result'"
  exit 1
fi

uv run --env-file .env python examples/run.py --url "$1" --goal "$2"

