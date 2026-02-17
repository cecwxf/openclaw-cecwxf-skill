# Multi-agent sync message templates

## 1) Kickoff message

【任务启动】
- 目标：<一句话目标>
- 分工：
  - topic1/chat：<职责>
  - topic3/coding：<职责>
  - topic5/test：<职责>
- 交付：<文件/结论>

## 2) Mid-progress message

【执行进度】
- topic3：<状态>
- topic5：<状态>
- 说明：若出现 timeout，仅表示等待窗口未返回，不等于失败；已继续追踪。

## 3) Final summary message

【最终汇总】
- 实现：<核心结果>
- 测试：<通过情况/风险>
- 结论：<可交付状态>
- 下一步：<改进项>
