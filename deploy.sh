#!/bin/bash

# GitHub Business Card Deployment Helper
# This script helps you deploy your business card to GitHub Pages

echo "🚀 GitHub Business Card Deployment Helper"
echo "========================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a git repository
if [ ! -d .git ]; then
    echo "📁 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: GitHub business card"
fi

# Check if config.js has been edited
if grep -q "yourusername" config.js; then
    echo "⚠️  Warning: You haven't edited config.js yet!"
    echo "Please edit config.js with your information before deploying."
    exit 1
fi

echo "✅ config.js has been customized"
echo ""

# Get GitHub username from config
GITHUB_USERNAME=$(grep "githubUsername:" config.js | cut -d'"' -f2)

echo "📝 Your GitHub username from config: $GITHUB_USERNAME"
echo ""

# Check if remote is set
if ! git remote | grep -q origin; then
    echo "🔗 No remote repository set."
    echo "Please enter your GitHub repository URL:"
    echo "Example: https://github.com/$GITHUB_USERNAME/github-business-card"
    read -p "Repository URL: " REPO_URL
    git remote add origin $REPO_URL
fi

# Push to GitHub
echo ""
echo "📤 Pushing to GitHub..."
git add .
git commit -m "Update business card information"
git branch -M main
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "🌐 Now enable GitHub Pages:"
echo "1. Go to your repository: https://github.com/$GITHUB_USERNAME/[repo-name]/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Choose 'main' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo ""
echo "Your business card will be available at:"
echo "https://$GITHUB_USERNAME.github.io/[repo-name]/"
echo ""
echo "🎉 Done! Create a QR code with your URL and add it to your business card!"