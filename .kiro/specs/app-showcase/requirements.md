# Requirements Document

## Introduction

This feature adds an app showcase section to Leon Wolf's personal website, highlighting his iOS development work. The showcase will feature two apps: "Scora" (a scoring app for padel and soccer matches) and "Complication Compilation" (a collection of watchOS complications). Additionally, a dedicated contact form page will be created for Complication Compilation to handle user inquiries and support requests.

## Requirements

### Requirement 1

**User Story:** As a website visitor, I want to see an overview of Leon's iOS apps, so that I can learn about his development work and download his apps.

#### Acceptance Criteria

1. WHEN a user navigates to the apps section THEN the system SHALL display a dedicated apps overview page
2. WHEN the apps page loads THEN the system SHALL show both "Scora" and "Complication Compilation" apps with descriptions
3. WHEN displaying each app THEN the system SHALL include app name, description, key features, and App Store link placeholder
4. WHEN a user clicks an App Store link THEN the system SHALL navigate to a placeholder URL that can be easily replaced later

### Requirement 2

**User Story:** As a potential user of Scora, I want to understand what the app does and its key features, so that I can decide if it meets my needs for scoring padel and soccer matches.

#### Acceptance Criteria

1. WHEN viewing the Scora app section THEN the system SHALL display a clear description of its scoring functionality
2. WHEN showing Scora details THEN the system SHALL highlight that it supports both padel and soccer match scoring
3. WHEN displaying Scora information THEN the system SHALL include key features and benefits
4. WHEN showing the Scora section THEN the system SHALL provide an App Store download link placeholder

### Requirement 3

**User Story:** As a watchOS user interested in complications, I want to learn about Complication Compilation and its features, so that I can enhance my Apple Watch experience.

#### Acceptance Criteria

1. WHEN viewing the Complication Compilation section THEN the system SHALL describe it as a collection of watchOS complications
2. WHEN displaying Complication Compilation details THEN the system SHALL explain the variety of complications available
3. WHEN showing this app THEN the system SHALL emphasize the design and functionality aspects
4. WHEN viewing Complication Compilation THEN the system SHALL include both App Store link and contact form link

### Requirement 4

**User Story:** As a user of Complication Compilation, I want to contact the developer with questions or feedback, so that I can get support or share suggestions.

#### Acceptance Criteria

1. WHEN a user accesses the Complication Compilation contact page THEN the system SHALL display a dedicated contact form
2. WHEN the contact form loads THEN the system SHALL include fields for name, email, subject, and message
3. WHEN a user submits the contact form THEN the system SHALL validate all required fields are completed
4. WHEN form validation passes THEN the system SHALL provide confirmation that the message was sent
5. IF form validation fails THEN the system SHALL display appropriate error messages for missing or invalid fields

### Requirement 5

**User Story:** As Leon Wolf, I want the apps section to integrate seamlessly with my existing website design, so that it maintains the professional and consistent look of my portfolio.

#### Acceptance Criteria

1. WHEN the apps pages are created THEN the system SHALL use the existing Hugo theme and styling
2. WHEN displaying app content THEN the system SHALL follow the same layout patterns as other site sections
3. WHEN showing the apps overview THEN the system SHALL include proper navigation integration
4. WHEN creating new pages THEN the system SHALL include appropriate meta tags and SEO optimization
5. WHEN implementing the contact form THEN the system SHALL match the site's visual design and typography

### Requirement 6

**User Story:** As a site administrator, I want placeholder App Store URLs that can be easily updated, so that I can replace them with actual store links when ready.

#### Acceptance Criteria

1. WHEN App Store links are created THEN the system SHALL use clearly marked placeholder URLs
2. WHEN placeholder URLs are implemented THEN the system SHALL use a consistent format that's easy to find and replace
3. WHEN displaying placeholder links THEN the system SHALL still provide proper button styling and user experience
4. WHEN updating URLs later THEN the system SHALL allow simple find-and-replace operations to update all instances