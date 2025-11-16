---
name: {{nested-agency}}-child-agent-1
description: Child Agent 1 description
tools: ['tool-a', 'tool-b', 'child-1-mcp/tool-1']
mcp-servers:
  child-1-mcp:
    type: 'local'
    command: 'some-command'
    args: ['--arg1', '--arg2']
    tools: ["*"]
    env:
      ENV_VAR_NAME: $
---

# Child Agent 1

Stuff...
