# Project Structure

## Root Directory Organization

### Configuration Files
- `config.toml` - Hugo site configuration and theme settings
- `firebase.json` - Firebase hosting configuration
- `.firebaserc` - Firebase project settings
- `.gitmodules` - Git submodule configuration for themes

### Content Directories
- `content/` - All site content in Markdown format
  - `content/posts/` - Blog posts and articles
  - `content/projects/` - Project showcase pages
- `archetypes/` - Content templates for new posts/pages
  - `archetypes/default.md` - Default page template
  - `archetypes/posts.md` - Blog post template

### Static Assets
- `static/` - Static files copied directly to output
  - `static/img/` - Images (profile photos, etc.)
  - `static/files/` - Downloadable files (CV, documents)
  - `static/svg/icons/` - SVG icon assets
  - Favicon files and web manifest

### Theme and Styling
- `themes/gokarna/` - Hugo theme (Git submodule)
- `resources/_gen/` - Generated theme resources and processed assets

### Build Output
- `public/` - Generated static site (deployment target)
  - Complete built website structure
  - CSS, JS, HTML files
  - Processed images and assets

### Development
- `.kiro/` - Kiro AI assistant configuration
- `.vscode/` - VS Code workspace settings
- `nginx/` - Nginx configuration for local development

## Content Organization Patterns

### Blog Posts
- Location: `content/posts/`
- Naming: `post-title.md` (kebab-case)
- Frontmatter: title, date, lastmod, draft status, type

### Project Pages
- Location: `content/projects/`
- Index page: `_index.md` for section overview

### Static Assets
- Images: `static/img/` for content images
- Downloads: `static/files/` for PDFs and documents
- Icons: `static/svg/icons/` for UI elements

## Build Process Flow
1. Hugo reads `config.toml` and content from `content/`
2. Processes Markdown with theme templates from `themes/gokarna/`
3. Copies static assets from `static/` to `public/`
4. Generates optimized HTML, CSS, JS in `public/`
5. Firebase deploys `public/` directory to hosting

## File Naming Conventions
- Content files: lowercase with hyphens (kebab-case)
- Static assets: descriptive names, maintain original extensions
- Generated files: Hugo handles naming automatically