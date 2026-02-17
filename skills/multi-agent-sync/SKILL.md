---
name: multi-agent-sync
description: Coordinate multi-agent tasks with visible group updates. Use when delegating work across multiple topic agents and the user needs transparent progress in-group (start update, mid-progress update, final summary).
---

# Multi-Agent Sync

Use this skill when running multi-agent collaboration in chat groups.

## Objective

Keep execution transparent: do not only run background session calls. Always mirror key progress back to the group thread.

## Mandatory workflow

1. **Kickoff sync**
   - Post a visible group message with:
     - task objective
     - role split (who does what)
     - expected deliverables
2. **Dispatch tasks**
   - Send detailed instructions to each agent session.
3. **Mid-progress sync**
   - Post at least one in-group progress update.
   - If a tool call returns timeout, explicitly say "timeout != failure" and continue tracking.
4. **Collect outputs**
   - Use session history/log checks to confirm outputs from each agent.
5. **Final sync**
   - Post one structured final message with:
     - implementation result
     - test/validation result
     - next actions

## State handling rules

- Treat `timeout` as "no reply in window", not hard failure.
- Continue with follow-up checks (`sessions_history` / process logs).
- If no output after retries, post a blocked-status update with missing dependencies.

## Output template (group-visible)

Use this 3-part structure in group chat:

1) 任务启动（分工）
2) 执行进度（中间状态）
3) 最终汇总（结果与后续）

## References

- `references/message-templates.md`
