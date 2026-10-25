#!/usr/bin/env fish
#
# cursor-agent-abbr: fish abbreviations for the Cursor Agent CLI
#
# Typing an abbreviation then space expands it in place, e.g.
#   cap "fix the failing tests"  ->  cursor-agent -p "fix the failing tests"
#
# Flags come from `cursor-agent --help`. Risky flags (--yolo/--force, --trust,
# --approve-mcps, --sandbox disabled) are deliberately not abbreviated.

# base command
abbr ca 'cursor-agent'

# print mode: non-interactive, the prompt follows
abbr cap 'cursor-agent -p'

# sessions
abbr cac 'cursor-agent --continue'
abbr car 'cursor-agent resume'
abbr cals 'cursor-agent ls'

# read-only modes
abbr capl 'cursor-agent --plan'
abbr cask 'cursor-agent --mode ask'

# account and maintenance
abbr cas 'cursor-agent status'
abbr cam 'cursor-agent models'
abbr cau 'cursor-agent update'
