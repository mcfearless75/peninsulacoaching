#!/bin/bash
# Peninsula Coaching — GitHub Pages Deployment
# Run this once to push to GitHub Pages

REPO_URL="$1"  # Pass your GitHub repo URL as argument e.g. https://github.com/USERNAME/peninsula-coaching.git

if [ -z "$REPO_URL" ]; then
  echo "Usage: bash deploy.sh https://github.com/YOUR_USERNAME/peninsula-coaching.git"
  exit 1
fi

git remote add origin "$REPO_URL"
git branch -M main
git push -u origin main

echo ""
echo "✅ Pushed to GitHub!"
echo ""
echo "Next: Go to your repo → Settings → Pages → Source: Deploy from branch → Branch: main → / (root)"
echo "Your site will be live at: https://YOUR_USERNAME.github.io/peninsula-coaching"
echo ""
echo "To connect your GoDaddy domain (www.peninsulacoaching.co.uk):"
echo "  1. In GitHub Pages settings, add your custom domain: www.peninsulacoaching.co.uk"
echo "  2. In GoDaddy DNS, add a CNAME record: www → YOUR_USERNAME.github.io"
echo "  3. Tick 'Enforce HTTPS' in GitHub Pages settings"
