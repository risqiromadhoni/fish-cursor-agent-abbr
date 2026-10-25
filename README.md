# fish-cursor-agent-abbr

Short fish abbreviations for the [Cursor Agent](https://cursor.com) CLI, so `cap "fix the failing tests"` expands to `cursor-agent -p "fix the failing tests"` before the prompt is sent.

## Install

With [fisher](https://github.com/jorgebucaran/fisher), once the repo is pushed:

```fish
fisher install risqiromadhoni/fish-cursor-agent-abbr
```

Or symlink the file manually:

```fish
ln -s /path/to/fish-cursor-agent-abbr/conf.d/cursor-agent-abbr.fish ~/.config/fish/conf.d/
```

## Abbreviations

| Abbr   | Expands to                  | Meaning                                  |
|--------|-----------------------------|------------------------------------------|
| `ca`   | `cursor-agent`              | base command                             |
| `cap`  | `cursor-agent -p`           | print mode, non-interactive; prompt follows |
| `cac`  | `cursor-agent --continue`   | continue previous session                |
| `car`  | `cursor-agent resume`       | resume latest chat                       |
| `cals` | `cursor-agent ls`           | pick a session to resume                 |
| `capl` | `cursor-agent --plan`       | plan mode (read-only planning)           |
| `cask` | `cursor-agent --mode ask`   | ask mode (read-only Q&A)                 |
| `cas`  | `cursor-agent status`       | auth status                              |
| `cam`  | `cursor-agent models`       | list models                              |
| `cau`  | `cursor-agent update`       | self-update                              |

Abbreviations expand only as the first word of a command, which is fish's default behaviour.

## Deliberately not abbreviated

Risky flags are left out so they can't be triggered by a short word:

- `--yolo` / `--force`: runs every tool call without approval
- `--trust`: trusts the workspace without prompting
- `--approve-mcps`: approves all MCP servers
- `--sandbox disabled`: turns off sandboxing

Account and plugin management (`login`, `logout`, `mcp`, `plugin`, `about`, `create-chat`) are also not included.
