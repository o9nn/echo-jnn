---
name: {{nested-agency}}-child-agent-2
description: Child Agent 2 description
tools: ['tool-a', 'tool-b', 'child-2-mcp/tool-1']
mcp-servers:
  child-2-mcp:
    type: 'local'
    command: 'some-command'
    args: ['--arg1', '--arg2']
    tools: ["*"]
    env:
      ENV_VAR_NAME: $
---

# Child Agent 2

Stuff...
