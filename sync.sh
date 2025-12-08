#!/bin/bash
# Quick sync script: Copies cv.html to index.html

echo "Syncing cv.html to index.html..."
cp cv.html index.html
echo "✓ Files synced successfully!"
echo ""
echo "Next steps:"
echo "  git add cv.html index.html"
echo "  git commit -m 'Your commit message'"
echo "  git push"

