### 🧱 Code Structure & Modularity
- **Limit each file to 500 lines.** If you approach this limit, refactor by splitting into modules or helper files.
- **Group code by feature or responsibility**, keeping modules self-contained.
- **Use clear, consistent imports**, preferring relative imports within the same package.

### 📎 Style & Conventions
- **Language**: The content of the website must be in English.
- **Don't use inline CSS**: use the style.scss file for all the CSS, do not inline it.
- **Layout**: The main layout of the site is in _layouts/mylayout.html
- **Programming Language**: Jekyll for GitHub Pages with HTML and Markdown.
- **Naming & Formatting**: Follow standard conventions.
- **Documentation**:  
  - Avoid excessive inline comments; reserve them for non-obvious logic.

### 📚 Documentation & Clarity
- **Comment only non-obvious code** to aid a mid-level developer’s understanding.
- For complex algorithms, add a brief inline note explaining *why*, not just *what*.

### 🧪 Testing & Reliability
- We do not do testing for this project.

### ⚙️ Tech Stack & Build System
- **Jekyll**: Static site generator for GitHub Pages
- **GitHub Pages**: Hosting platform
- **Liquid**: Templating language used by Jekyll
- **SCSS/CSS**: For styling and design
- **HTML/Markdown**: Frontend structure and content
- **Ruby**: Required for local development

### 🛠️ Local Development
Using Ruby:
```sh
gem update
gem install bundler
bundle update
bundle exec jekyll serve
```

Using Docker (recommended):
```sh
docker run --rm -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll jekyll serve --watch --drafts
```
or
```sh
docker run -it --rm -v $(pwd):/usr/src/app -p "4000:4000" starefossen/github-pages
```

The site will be available at http://localhost:4000

### 🎨 Styling
- Use the existing color scheme (primary: #00827F).
- Maintain responsive design for all screen sizes.
- Add new styles to `assets/css/style.scss`.

### 📄 Jekyll Front Matter
All content pages should include proper front matter:
```yaml
---
layout: mylayout
title: Page Title
navigation_weight: 10
---
```

### 🚀 Performance
- Optimize images before adding them to the repository.
- Minimize external dependencies.
- Keep the design clean and lightweight.
