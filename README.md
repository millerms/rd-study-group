# Recovery Dharma Study Group — Site

Jekyll site for the Recovery Dharma Study Group. Built with the Minimal Mistakes theme and deployed via GitHub Pages.

## Overview
- Live site: `https://millerms.github.io/rd-study-group/`
- Theme: [`mmistakes/minimal-mistakes@4.27.3`](https://github.com/mmistakes/minimal-mistakes)
- Base URL: `_config.yml` uses `url: https://millerms.github.io` and `baseurl: /rd-study-group` (links should respect this).

## Project Structure
- `_config.yml`: Site config, theme, footer links.
- `_data/navigation.yml`: Primary navigation links.
- `_pages/`: Static pages (e.g., meeting format, resources).
- `index.md`: Home page (study guide).
- `assets/`, `_sass/`: Styles and assets.

## Local Development (Docker)
Prereqs: Docker Desktop with Compose v2 (`docker compose`).

- Start: `make serve`
- Open: `http://localhost:4000/rd-study-group/`
- Stop: Ctrl+C
- Clean: `make clean`

What it does:
- Builds a Ruby 3.2 image and installs gems.
- Mounts the repo so edits live-reload (`35729` exposed).
- Caches gems in a Docker volume for faster subsequent runs.

## Local Development (Ruby)
If you prefer running locally without Docker:

1) Install Ruby 3.2+ (via rbenv/asdf).
2) Install Bundler matching the lockfile: `gem install bundler:2.7.1`
3) Install gems: `bundle install`
4) Serve: `bundle exec jekyll serve`

Open `http://localhost:4000/rd-study-group/`.

## Common Edits
- Navigation: Edit `_data/navigation.yml` and use URLs like `/` or `/meeting/` (the theme will prefix `baseurl`).
- Footer links: Edit `footer.links` in `_config.yml` and include both `label`, `icon`, and `url`.
- Pages: Add Markdown files in `_pages/` with front matter including `layout` and `permalink`.

## Deploying to GitHub Pages
This is configured as a GitHub project site. Push to `main` and enable GitHub Pages in the repo settings (Source: `GitHub Actions` or `Deploy from branch`, pointing to `main`). The site publishes to:

`https://millerms.github.io/rd-study-group/`

## Acknowledgements
- Theme: [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) by Michael Rose.

## License
MIT — see [`LICENSE`](LICENSE).
