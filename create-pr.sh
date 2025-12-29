#!/bin/bash

# Script to create PR for CedraForge Studio submission
# Target: https://github.com/cedra-labs/move-contract-examples

set -e

REPO_DIR="/Users/34r7h/Developer/hacks/cedra-builders-forge"
TARGET_REPO="https://github.com/cedra-labs/move-contract-examples"
BRANCH="cedraforge-studio-submission"

cd "$REPO_DIR"

echo "=== CedraForge Studio PR Submission ==="
echo ""
echo "Current branch: $(git branch --show-current)"
echo "Target repository: $TARGET_REPO"
echo ""

# Check if we're on the right branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "$BRANCH" ]; then
    echo "⚠️  Warning: Not on $BRANCH branch"
    echo "Switching to $BRANCH..."
    git checkout "$BRANCH"
fi

# Check if submission files exist
if [ ! -d "submission/cedraforge-studio" ]; then
    echo "❌ Error: submission/cedraforge-studio directory not found"
    exit 1
fi

echo "✅ Submission files found:"
find submission/cedraforge-studio -type f | sort

echo ""
echo "=== Next Steps ==="
echo ""
echo "1. Fork the repository:"
echo "   Go to $TARGET_REPO and click 'Fork'"
echo ""
echo "2. Add your fork as remote:"
echo "   git remote add fork https://github.com/YOUR_USERNAME/move-contract-examples.git"
echo ""
echo "3. Push the branch:"
echo "   git push fork $BRANCH"
echo ""
echo "4. Create PR on GitHub:"
echo "   - Go to $TARGET_REPO/pulls"
echo "   - Click 'New pull request'"
echo "   - Select 'compare across forks'"
echo "   - Base: cedra-labs/move-contract-examples:main"
echo "   - Compare: YOUR_USERNAME/move-contract-examples:$BRANCH"
echo ""
echo "5. Use PR title:"
echo "   feat: Add CedraForge Studio - Template Registry and Achievement System"
echo ""
echo "6. Share PR link in Telegram:"
echo "   https://t.me/+Ba3QXd0VG9U0Mzky"
echo ""
echo "See PR_SUBMISSION.md for full details and PR description template."

