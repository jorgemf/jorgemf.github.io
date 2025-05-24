### 🔄 Project Awareness & Context
- **Startup**: Always read these files before coding:  
  - `ai/CONFIGURATION.md` – project settings  
  - `ai/PLANNING.md`       – architecture, goals, constraints  
- **Task list**: Review `ai/TASK.md` before work. If a task is missing, add it with a brief description and today’s date.
- **Design specs**: Consult `ai/DESIGN.md` for UI/UX and architectural guidelines.
- **Language**: Write code in English unless Spanish is explicitly requested.

### ⚙️ Configuration
- **Do not modify** `ai/CONFIGURATION.md` unless I ask you to.
- If you spot missing or outdated settings, ask for confirmation before changing anything.

### 📐 Planning
- Ensure `ai/PLANNING.md` contains:  
  1. **Project Overview**: short summary of purpose and objectives.  
  2. **Architecture**:  
     - **File Structure**: list of main files and their roles.  
     - **Key Components**: list of core modules and their responsibilities.  
- **Keep it up to date** whenever the codebase or structure changes.
- Use it as your map to locate and modify code.

### ✅ Task Completion
- **Mark tasks** in `ai/TASK.md` immediately upon completion.
- **Organize** under:  
  - **To Do**  
  - **In Progress**  
  - **Done**  
- Each entry must include a concise description and its related component.

### 🧠 AI Behavior Rules
- **Ask questions** whenever context is unclear.
- **Do not invent** libraries or functions—use only verified Jekyll and GitHub Pages features.
- **Verify file paths** and file names exist before referencing.
- **Never delete or overwrite** existing code unless explicitly instructed or as part of a listed task.

### 🚀 Development Workflow
- Make changes locally
- Test using the local development server
- Commit and push changes to GitHub
- GitHub Pages will automatically build and deploy the site

### 🖼️ Content Management
- Create new pages as Markdown (`.md`) files in the root directory
- Add new blog posts to the `_posts/` directory with the filename format: `YYYY-MM-DD-title.md`
- Store images in the appropriate subdirectory of `assets/`
- All content pages should include proper Jekyll front matter (see `ai/CONFIGURATION.md` for details)
- Use Markdown for content whenever possible
- For blog posts, include categories in the front matter:
  ```yaml
  ---
  layout: mylayout
  title: Post Title
  categories: [category1, category2]
  ---
  ```
- When adding new content, ensure it follows the existing style and formatting
- Optimize images before adding them to the repository
- Keep content concise and well-structured
