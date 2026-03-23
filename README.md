### Create Table of Contents – Auto-generate a browsable README index from any list

This repository provides a bash script that turns a plain text list into a clean, browsable Table of Contents in your README, with correctly anchored Markdown links and optional GitHub Issues creation via the `gh` CLI. It’s ideal for learning repos, notes, or docs where you want a living, navigable index that scales as content grows.

- What it does
  - Parses a text file of topics and generates a numbered TOC in `README.md`
  - Builds stable, sanitized Markdown anchors and links per item
  - Optionally opens matching GitHub Issues for each entry using `gh`
  - Preserves an “Overview” jump link and a mirrored section list

- Why it’s useful
  - Keep learning paths and project indexes browsable as they evolve
  - Eliminate manual anchor formatting and fragile links
  - Standardize README navigation across repositories

- Requirements
  - macOS/Linux shell with bash, git
  - GitHub CLI (`brew install gh`) if you want auto-issue creation

- Usage
  - Prepare a `Content.txt` (one title per line)
  - Run: `./create-table-of-contents.sh Content.txt`
  - Commit the updated `README.md`

- Key details
  - Auto-normalizes titles (lowercasing, dashifying, removing unsafe chars)
  - Generates both a checklist-style TOC and a sectioned outline
  - Works in any repo; detects repo/user from local git config

Repository: https://github.com/c4arl0s/create-table-of-contents
