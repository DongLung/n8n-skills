#!/usr/bin/env bash
# Portions of this file are adapted from the n8n-io/skills plugin
# (https://github.com/n8n-io/skills), licensed under Apache License 2.0.
# Adapted for the community n8n-mcp MCP server. See /NOTICES.
#
# Fires before n8n_create_workflow. A new workflow means architecture, naming,
# and reuse decisions need to happen before the JSON lands.
# TODO(M4): add n8n-subworkflows to the reminder once that skill ships.
exec "$(dirname "$0")/_emit.sh" "create-workflow" \
"Before creating: invoke the n8n-workflow-patterns skill via the Skill tool to pick the right architecture (webhook / HTTP API / database / AI agent / scheduled / batch), name nodes for what they do, and add sticky notes capturing the why. Before duplicating logic, list existing workflows (n8n_list_workflows) and reuse what's there. Pass skillsUsed if your server's create tool accepts it."
