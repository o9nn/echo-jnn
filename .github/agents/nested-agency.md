---
name: {{nested-agency}}
description: Nested Agency description
tools: ['tool-a', 'tool-b', 'nested-mcp/tool-1']
mcp-servers:
  nested-mcp:
    type: 'local'
    command: 'some-command'
    args: ['--arg1', '--arg2']
    tools: ["*"]
    env:
      ENV_VAR_NAME: $
---

# Nested Agency

Stuff...

How to correctly reference .github/agents/nested-agency & child-agent-[i] etc???
