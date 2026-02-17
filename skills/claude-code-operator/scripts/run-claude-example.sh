#!/usr/bin/env bash
set -euo pipefail

# Example wrapper: run Claude Code in a target project directory.
# Usage:
#   ./scripts/run-claude-example.sh /path/to/project "Fix failing tests and summarize"

PROJECT_DIR="${1:-}"
TASK="${2:-}"

if [[ -z "$PROJECT_DIR" || -z "$TASK" ]]; then
  echo "Usage: $0 <project_dir> <task>"
  exit 1
fi

if ! command -v claude >/dev/null 2>&1; then
  echo "Error: claude command not found. Install Claude Code first."
  exit 1
fi

cd "$PROJECT_DIR"
claude "$TASK"
