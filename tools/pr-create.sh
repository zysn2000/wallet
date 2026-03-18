#!/usr/bin/env bash
set -euo pipefail

REPO="zysn2000/wallet"
BASE="main"
HEAD="feat/phase1-mvp"
TITLE="feat/phase1-mvp: Vue3 UI polish + backend REST skeleton + monorepo scaffold"
BODY="Phase 1 MVP patch: frontend polished; backend REST skeleton; monorepo scaffold. See PR_BODY.md for full details."

if [ -z "${GITHUB_TOKEN:-}" ]; then
  echo "Please set GITHUB_TOKEN environment variable with a GitHub token that has repo access." >&2
  exit 1
fi

PR_JSON=$(cat <<JSON
{
  "title": "$TITLE",
  "head": "$HEAD",
  "base": "$BASE",
  "body": "$BODY"
}
JSON
)

RESPONSE=$(curl -s -H "Authorization: token $GITHUB_TOKEN" -X POST -d "$PR_JSON" "https://api.github.com/repos/$REPO/pulls")
PR_URL=$(echo "$RESPONSE" | grep -o '"html_url": *"[^"]*"' | head -1 | sed 's/.*"\(https[^"]*\)".*/\1/')

if [ -n "$PR_URL" ]; then
  echo "PR created: ${PR_URL}"
else
  echo "Failed to create PR. Full response:" >&2
  echo "$RESPONSE" >&2
  exit 1
fi
