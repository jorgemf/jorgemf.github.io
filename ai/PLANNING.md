# Project Planning

## 🎯 Project Overview
This project is a personal and professional website for Jorge, built with Jekyll. It serves as an academic portfolio, CV, and publication showcase, providing information about research, projects, and professional background.

## 🏗️ Architecture

### File Structure
```
jorgemf.github.io/
├── _layouts/           # HTML layout templates
│   ├── mylayout.html   # Main layout template
│   └── mylayout_pubs.html # Publications layout
├── _posts/             # Blog posts in Markdown format
├── _site/              # Generated site (don't edit directly)
├── assets/             # Static assets (images, CSS, etc.)
│   ├── css/            # Stylesheets
│   │   └── style.scss  # Main stylesheet
│   └── projects/       # Project images
├── old_web/            # Archive of previous website version
├── _config.yml         # Jekyll configuration
├── Gemfile             # Ruby dependencies
├── ai/                 # Project management and meta files
└── *.md, *.html        # Content pages
```

### Key Files
- `_config.yml`: Site configuration and settings
- `_layouts/mylayout.html`: Main layout template
- `assets/css/style.scss`: Main stylesheet
- `index.md`: Homepage content
- `cv.html`, `cv_long.html`, `cv.pdf`: Curriculum vitae in various formats
- `publications.md`, `research_projects.md`, `projects.md`, `old_projects.md`: Content pages
- `ai/`: Project management and meta files (planning, design, configuration, tasks)

### Key Components
- **Layout**: `_layouts/mylayout.html` defines the site structure.
- **Navigation**: Dynamic, based on page metadata.
- **Content Pages**: Markdown/HTML files for main site sections.
- **Assets**: Images and styles for branding and appearance.

## 🔄 Update Policy
Update this document whenever the file structure or main components change to keep the architecture and planning current.
