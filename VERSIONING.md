# CV Versioning Strategy

## File Structure

- **`cv.html`** - Master/working file (edit this one)
- **`index.html`** - Production file (must match cv.html, used by GitHub Pages)

## Important: Keep Files in Sync

**Both files must always be identical.** GitHub Pages serves `index.html`, but `cv.html` is your working file.

## Version Control Workflow

### 1. Always Edit `cv.html`
- Make all changes to `cv.html` first
- This is your master working file

### 2. Sync to `index.html` Before Committing
- After making changes to `cv.html`, copy it to `index.html`:
  ```bash
  cp cv.html index.html
  ```
- Or use the sync script:
  ```bash
  ./sync.sh
  ```

### 3. Commit Both Files Together
- Always commit both `cv.html` and `index.html` together
- Use descriptive commit messages
- Never commit if files are out of sync

### 4. Push to GitHub
- Push changes to trigger GitHub Pages update
- Changes go live within 1-2 minutes at willdundon.com

## Quick Sync Command

To sync cv.html to index.html:
```bash
cp cv.html index.html
```

Or use the sync script:
```bash
./sync.sh
```

## Git Workflow

```bash
# 1. Make changes to cv.html
# 2. Sync to index.html
cp cv.html index.html

# 3. Verify files are identical (optional check)
diff cv.html index.html

# 4. Stage both files
git add cv.html index.html

# 5. Commit with descriptive message
git commit -m "Description of changes"

# 6. Push to GitHub
git push
```

## Restoring from Live Version

If you need to restore the live version from GitHub:
```bash
# Get the live version from the last commit
git show HEAD:index.html > cv.html
cp cv.html index.html
```

## Version History

All version history is maintained in Git. Check version history with:
```bash
git log --oneline
```

View what's currently live:
```bash
git show HEAD:index.html
```

## Notes

- GitHub Pages serves `index.html` as the default file
- Always keep both files in sync - they must be identical
- Use `cv.html` as the single source of truth for editing
- The live site is at: https://willdundon.com

