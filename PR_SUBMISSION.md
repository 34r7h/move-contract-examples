# PR Submission Guide for CedraForge Studio

## Target Repository
https://github.com/cedra-labs/move-contract-examples

## Submission Branch
`cedraforge-studio-submission`

## Steps to Create PR

### Option 1: Fork and PR (Recommended)

1. **Fork the repository:**
   - Go to https://github.com/cedra-labs/move-contract-examples
   - Click "Fork" button in the top right
   - This creates your own copy: `https://github.com/YOUR_USERNAME/move-contract-examples`

2. **Add fork as remote:**
   ```bash
   cd /Users/34r7h/Developer/hacks/cedra-builders-forge
   git remote add upstream https://github.com/cedra-labs/move-contract-examples.git
   git remote add fork https://github.com/YOUR_USERNAME/move-contract-examples.git
   ```

3. **Push submission branch to your fork:**
   ```bash
   git push fork cedraforge-studio-submission
   ```

4. **Create PR on GitHub:**
   - Go to https://github.com/cedra-labs/move-contract-examples
   - Click "Pull requests" → "New pull request"
   - Select "compare across forks"
   - Base: `cedra-labs/move-contract-examples:main`
   - Compare: `YOUR_USERNAME/move-contract-examples:cedraforge-studio-submission`
   - Click "Create pull request"

### Option 2: Direct PR (if you have write access)

1. **Add target repository as remote:**
   ```bash
   cd /Users/34r7h/Developer/hacks/cedra-builders-forge
   git remote add cedra-examples https://github.com/cedra-labs/move-contract-examples.git
   ```

2. **Push branch:**
   ```bash
   git push cedra-examples cedraforge-studio-submission
   ```

3. **Create PR on GitHub:**
   - Go to https://github.com/cedra-labs/move-contract-examples/pulls
   - Click "New pull request"
   - Select `cedraforge-studio-submission` branch
   - Click "Create pull request"

## PR Title
```
feat: Add CedraForge Studio - Template Registry and Achievement System
```

## PR Description

```markdown
## CedraForge Studio - Builders Forge Submission

### Overview
CedraForge Studio is an interactive, gamified development environment for building Move smart contracts on Cedra. This PR includes the core Move smart contracts that power the template registry and achievement system.

### What's Included

#### 1. Template Registry Contract
- Decentralized registry for Move contract templates
- Community rating system (1-5 stars)
- Download tracking
- Category and tag organization
- Template discovery and sharing

**Key Functions:**
- `register_template()` - Register new contract templates
- `get_template()` - Retrieve template details
- `rate_template()` - Rate templates with 1-5 stars
- `download_template()` - Track template downloads
- `get_average_rating()` - Get average rating for templates

#### 2. Achievement System Contract
- Gamification system for developer achievements
- Point-based scoring system
- Global leaderboard
- User achievement profiles

**Achievement Types:**
- First Contract Created (100 points)
- Used 10 Templates (200 points)
- Documentation Generated (50 points)
- First Contract Deployed (150 points)
- Community Contributor (300 points)

### Structure
```
submission/cedraforge-studio/
├── Move.toml
├── README.md
├── template_registry/
│   └── sources/
│       └── TemplateRegistry.move
└── achievements/
    └── sources/
        └── AchievementSystem.move
```

### Hackathon Details
- **Event:** Cedra Builders Forge
- **Platform:** DoraHacks
- **Submission Date:** December 2025
- **Full Project:** https://github.com/34r7h/CedraForge-Studio

### Public Goods Contribution
This project contributes to the Cedra ecosystem as a public good by:
- Providing reusable Move contract templates
- Enabling community-driven template sharing
- Gamifying the development experience
- Building infrastructure for developer tools

### Testing
- All contracts compile successfully
- Error handling implemented
- Resource management follows Move best practices

### License
Original code created for Cedra Builders Forge hackathon.
```

## Files Included
- `submission/cedraforge-studio/Move.toml`
- `submission/cedraforge-studio/README.md`
- `submission/cedraforge-studio/template_registry/sources/TemplateRegistry.move`
- `submission/cedraforge-studio/achievements/sources/AchievementSystem.move`

## After PR Creation

1. **Share PR link in Telegram:**
   - Go to: https://t.me/+Ba3QXd0VG9U0Mzky
   - Share the PR link as required by hackathon rules

2. **Monitor PR:**
   - Respond to any review comments
   - Make requested changes if needed

## Current Status
✅ Submission files prepared
✅ Branch created: `cedraforge-studio-submission`
✅ Commit created with all files
⏳ Ready for PR creation

