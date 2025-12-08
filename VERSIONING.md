# CV Versioning Strategy

## File Structure

- **`cv.html`** - Master/working file (edit this one)
- **`index.html`** - Production file (auto-synced from cv.html, used by GitHub Pages)

## Version Control Workflow

### 1. Always Edit `cv.html`
- Make all changes to `cv.html` first
- This is your master working file

### 2. Sync to `index.html` Before Committing
- After making changes to `cv.html`, copy it to `index.html`:
  ```bash
  cp cv.html index.html
  ```
- Or use the sync script (see below)

### 3. Commit Both Files Together
- Always commit both `cv.html` and `index.html` together
- Use descriptive commit messages

### 4. Push to GitHub
- Push changes to trigger GitHub Pages update
- Changes go live within 1-2 minutes

## Quick Sync Command

To sync cv.html to index.html:
```bash
cp cv.html index.html
```

## Git Workflow

```bash
# 1. Make changes to cv.html
# 2. Sync to index.html
cp cv.html index.html

# 3. Stage both files
git add cv.html index.html

# 4. Commit with descriptive message
git commit -m "Description of changes"

# 5. Push to GitHub
git push
```

## Version History

All version history is maintained in Git. Check version history with:
```bash
git log --oneline
```

## Notes

- GitHub Pages serves `index.html` as the default file
- Always keep both files in sync
- Use `cv.html` as the single source of truth for editing

