#!/bin/bash
# Sync data files from Obsidian vault to clawd-directory
# Run manually or via cron: ./data/sync.sh

VAULT="/Users/josephhillin/Obsidian/Clawd"
DEST="$(dirname "$0")"

echo "Syncing data from Obsidian vault..."

# Skills data
if [ -f "$VAULT/data/scraped/clawdhub-skills.md" ]; then
  cp "$VAULT/data/scraped/clawdhub-skills.md" "$DEST/skills.md"
  echo "  - skills.md synced"
fi

# Integrations data
if [ -f "$VAULT/data/scraped/clawdbot-integrations.md" ]; then
  cp "$VAULT/data/scraped/clawdbot-integrations.md" "$DEST/integrations.md"
  echo "  - integrations.md synced"
fi

# Testimonials/showcase data
if [ -f "$VAULT/data/scraped/clawdbot-showcase.md" ]; then
  cp "$VAULT/data/scraped/clawdbot-showcase.md" "$DEST/testimonials.md"
  echo "  - testimonials.md synced"
fi

# Pain points research
if [ -f "$VAULT/research/user-pain-points.md" ]; then
  cp "$VAULT/research/user-pain-points.md" "$DEST/pain-points.md"
  echo "  - pain-points.md synced"
fi

echo "Sync complete."
