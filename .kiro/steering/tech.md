# Technology Stack

## Static Site Generator
- **Hugo** - Fast static site generator written in Go
- **Theme**: Gokarna - Minimalist theme with dark/light mode support
- **Content Format**: Markdown with YAML frontmatter

## Deployment & Hosting
- **Firebase Hosting** - Static site hosting
- **Project ID**: leonwolfdev
- **Domain**: https://leonwolf.dev

## Build System
- Hugo generates static files to `public/` directory
- Firebase deploys from `public/` folder
- No Node.js build process (minimal package.json)

## Configuration
- **Main Config**: `config.toml` - Hugo site configuration
- **Firebase Config**: `firebase.json` and `.firebaserc`
- **Language**: German (de-de) with English content support

## Common Commands

### Development
```bash
# Start local development server
hugo server -D

# Build site for production
hugo

# Build with drafts included
hugo -D
```

### Deployment
```bash
# Deploy to Firebase
firebase deploy

# Preview deployment
firebase serve
```

### Content Management
```bash
# Create new post
hugo new posts/post-name.md

# Create new project page
hugo new projects/project-name.md
```

## Dependencies
- Hugo (minimum version 0.81.0)
- Firebase CLI for deployment
- Git submodules for theme management

## Theme Customization
- Theme located in `themes/gokarna/`
- Custom static assets in `static/` directory
- Content organization follows Hugo conventions