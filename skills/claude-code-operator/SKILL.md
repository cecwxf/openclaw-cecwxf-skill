---
name: claude-code-operator
description: Use Claude Code CLI from OpenClaw for coding tasks, including one-shot prompts and background runs with progress checks. Use when the user asks OpenClaw to call Claude Code (e.g., 调用/调起 Claude Code), delegate coding edits to Claude Code, or run Claude Code in a specific project directory.
---

# Claude Code Operator

Run Claude Code through OpenClaw tools in a reliable, observable way.

## Execution rules

1. Verify `claude` binary exists before first run.
2. Always run Claude Code with `pty:true`.
3. Always set an explicit `workdir` (target project path).
4. For long tasks, run in background and monitor with `process`.
5. Report milestones to user: started, waiting-for-input, finished/failed.

## Standard patterns

### A) One-shot task

Use `exec`:
- `pty:true`
- `workdir:<project>`
- command: `claude "<task>"`

### B) Long-running task

1. Start background run with `exec` (`background:true`, `pty:true`).
2. Save `sessionId`.
3. Use `process log` and `process poll` for status.
4. If Claude asks for input, use `process submit`.

## Suggested command templates

- Quick run:
  - `claude "修复当前仓库测试失败并解释根因"`
- Background run:
  - `claude "实现 <feature>，完成后总结改动与测试结果"`

## Safety and boundaries

- Do not claim Claude Code changed files unless logs prove completion.
- If `claude` is missing, tell user to install Claude Code first.
- Keep OpenClaw and Claude Code command sets clearly separated.

## References

- `references/overview-notes.md`
- `references/docs-index-shortlist.md`
- `scripts/run-claude-example.sh`
