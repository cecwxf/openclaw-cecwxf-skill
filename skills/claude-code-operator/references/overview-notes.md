# Claude Code overview notes

Primary source: https://code.claude.com/docs/en/overview

## Confirmed from overview

- Claude Code is an agentic coding tool that reads codebases, edits files, runs commands, and integrates with dev tools.
- Main surfaces: Terminal, VS Code, Desktop, Web, JetBrains.
- Terminal start flow:
  1) install
  2) `cd your-project`
  3) run `claude`
- Can help with coding tasks, bug fixing, git workflows, MCP tool connectivity, hooks, and multi-agent workflows.

## Practical OpenClaw orchestration takeaway

When users ask OpenClaw to "use Claude Code", OpenClaw should:
1. execute `claude` in the requested project directory;
2. keep the run observable (foreground or background+process monitoring);
3. return concrete outputs (what changed, tests status, next actions).
