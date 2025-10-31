# Design Document

## Overview

The app showcase feature will add a dedicated section to Leon Wolf's personal website to highlight his iOS development work. The implementation will create two main pages: an apps overview page showcasing both "Scora" and "Complication Compilation", and a dedicated contact form page for Complication Compilation users. The design follows Hugo's content structure and integrates seamlessly with the existing Gokarna theme.

## Architecture

### Content Structure
```
content/
├── apps/
│   ├── _index.md          # Apps overview page
│   └── complication-compilation-contact.md  # Contact form page
```

### URL Structure
- `/apps/` - Main apps overview page
- `/apps/complication-compilation-contact/` - Contact form for Complication Compilation

### Navigation Integration
The apps section will be added to the main navigation menu in `config.toml` with a mobile/app icon.

## Components and Interfaces

### Apps Overview Page (`content/apps/_index.md`)

**Layout**: Uses Hugo's page type with Gokarna theme styling

**Content Sections**:
1. **Page Header**: "My iOS Apps" title with brief introduction
2. **App Cards**: Two featured app sections with consistent styling
   - App icon/screenshot placeholder
   - App name and tagline
   - Key features list
   - App Store button with placeholder URL
   - Additional action buttons (contact form link for Complication Compilation)

**App Information Structure**:

**Scora**:
- Name: "Scora"
- Tagline: "Score Keeper for Padel & Soccer"
- Description: Comprehensive scoring solution for padel and soccer matches
- Key Features:
  - Real-time match scoring
  - Support for both padel and soccer rules
  - Match history and statistics
  - Clean, intuitive interface
- App Store URL: `https://apps.apple.com/app/scora-placeholder-id`

**Complication Compilation**:
- Name: "Complication Compilation"
- Tagline: "Beautiful watchOS Complications"
- Description: Curated collection of elegant and functional Apple Watch complications
- Key Features:
  - Variety of complication designs
  - Multiple watch face compatibility
  - Customizable appearance options
  - Regular updates with new designs
- App Store URL: `https://apps.apple.com/app/complication-compilation-placeholder-id`
- Contact Link: Link to dedicated contact form

### Contact Form Page (`content/apps/complication-compilation-contact.md`)

**Layout**: Standard Hugo page layout with custom form styling

**Form Fields**:
- Name (required, text input)
- Email (required, email input with validation)
- Subject (required, text input)
- Message (required, textarea, minimum 10 characters)

**Form Behavior**:
- Client-side validation for required fields and email format
- Form submission handling (placeholder for future backend integration)
- Success/error message display
- Form reset after successful submission

**Styling**: Matches site's existing form elements and button styles from Gokarna theme

## Data Models

### App Information Model
```yaml
# Frontmatter structure for apps
apps:
  - name: string
    tagline: string
    description: string
    features: array of strings
    app_store_url: string
    contact_url: string (optional)
    icon_path: string (optional)
```

### Contact Form Model
```javascript
// Form data structure
ContactForm {
  name: string (required, max 100 chars)
  email: string (required, valid email format)
  subject: string (required, max 200 chars)
  message: string (required, min 10 chars, max 2000 chars)
}
```

## Error Handling

### Form Validation
- **Client-side validation**: Immediate feedback for required fields, email format, and character limits
- **Error display**: Inline error messages below each field with clear, user-friendly text
- **Success feedback**: Confirmation message after successful form submission
- **Fallback handling**: Graceful degradation if JavaScript is disabled

### Content Fallbacks
- **Missing app information**: Default placeholder content and styling
- **Broken App Store links**: Clear indication that links are placeholders
- **Image loading**: Alt text and fallback styling for missing app icons

## Testing Strategy

### Content Testing
- Verify all app information displays correctly
- Test App Store placeholder links open in new tabs
- Validate responsive design on mobile and desktop
- Check navigation integration and menu highlighting

### Form Testing
- Test all form validation scenarios (empty fields, invalid email, character limits)
- Verify form submission behavior and user feedback
- Test form accessibility (keyboard navigation, screen readers)
- Validate responsive form layout on different screen sizes

### Integration Testing
- Ensure proper Hugo content rendering
- Test theme integration and styling consistency
- Verify SEO meta tags and page structure
- Test site build process with new content

### Browser Compatibility
- Test on major browsers (Chrome, Firefox, Safari, Edge)
- Verify mobile responsiveness
- Test form functionality across browsers
- Validate JavaScript form enhancements

## SEO and Meta Tags

### Apps Overview Page
- Title: "iOS Apps by Leon Wolf - Scora & Complication Compilation"
- Description: "Discover my iOS apps: Scora for padel and soccer scoring, and Complication Compilation for beautiful Apple Watch complications."
- Keywords: "iOS apps, padel scoring, soccer scoring, Apple Watch complications, watchOS"

### Contact Form Page
- Title: "Contact - Complication Compilation Support"
- Description: "Get in touch about Complication Compilation. Questions, feedback, and support for the Apple Watch complications app."
- Keywords: "Complication Compilation, Apple Watch, support, contact, watchOS complications"

## Responsive Design

### Mobile Optimization
- App cards stack vertically on mobile devices
- Touch-friendly button sizing (minimum 44px touch targets)
- Optimized form layout for mobile input
- Readable typography at all screen sizes

### Desktop Enhancement
- Side-by-side app card layout on larger screens
- Hover effects for interactive elements
- Optimal form width and spacing
- Enhanced visual hierarchy

## Accessibility

### WCAG Compliance
- Proper heading hierarchy (h1, h2, h3)
- Alt text for all images and icons
- Keyboard navigation support
- Sufficient color contrast ratios
- Screen reader friendly form labels and error messages

### Form Accessibility
- Associated labels for all form inputs
- ARIA attributes for validation messages
- Focus management and visual indicators
- Clear error messaging and instructions