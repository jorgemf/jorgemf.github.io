# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal professional website for Jorge (jorgeai.dev) - an AI developer and researcher. Built with Jekyll and hosted on GitHub Pages.

## Build Commands

```sh
# Local development with Ruby
bundle exec jekyll serve

# Local development with Docker (alternative)
docker run -it --rm -v $(pwd):/usr/src/app -p "4000:4000" starefossen/github-pages

# Install/update dependencies
gem update
gem install bundler
bundle update
```

## CV Build (LaTeX)

The CV is built separately as a LaTeX document in `cv/src/`:

```sh
cd cv/src
pdflatex main.tex
# or xelatex main.tex for better font support
```

## Architecture

### Jekyll Structure
- `_layouts/` - Two layouts: `mylayout.html` (main pages) and `mylayout_pubs.html` (publications)
- `_posts/` - Blog posts (Markdown with Jekyll front matter)
- `assets/css/style.scss` - Main stylesheet (SCSS compiled by Jekyll)
- `_config.yml` - Jekyll configuration

### Page Navigation
Pages use `navigation_weight` in front matter to control menu order. The layout iterates through `site.html_pages` sorted by this weight.

### CV System
- `cv/src/main.tex` - LaTeX source for CV
- Uses custom environments: `twocolentry`, `onecolentry`, `highlights`
- Primary color defined as RGB(0, 130, 127)
- Output goes to `cv/out/` or `cv/src/`

### Excluded from Build
The `_config.yml` excludes: `old_web/`, `cv/`, `ai/`, `.cursorrules`, `README.md`

## Key Files
- `index.md` - Homepage (About Me)
- `cv.html` - CV page (links to PDF)
- `publications.md` - Academic publications
- `research_projects.md` - Project portfolio
- `contact.md` - Contact information
