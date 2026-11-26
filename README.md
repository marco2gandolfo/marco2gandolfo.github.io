# marcogandolfo-site

Personal website of Marco Gandolfo, moved from Google Sites to GitHub Pages.
Plain HTML and CSS, with no build step: GitHub serves the files as they are.

## Folder layout

- `index.html`, `news.html`, `publications.html`, `cv.html`, `contact-me.html`: the main pages
- `resources/`: MakeHuman, R tutorials and functions, Basics of TMS, Stimuli
- `online-experiments/`: Boundary Extension and Depth of field
- `assets/style.css`: all styling (colours are set at the top of the file)
- `images/`: pictures used on the pages
- `get_images.command`: run once to download the images from the old Google Site

## Publishing

1. Create a repository on GitHub. If you name it `<your-username>.github.io`,
   the site appears at `https://<your-username>.github.io`.
2. Upload everything in this folder (Add file > Upload files, drag the folder contents in).
3. In the repository go to Settings > Pages, set Source to "Deploy from a branch",
   branch `main`, folder `/ (root)`, and save.
4. After a minute or two the site is live.

## Editing

- Add a news item: open `news.html` and copy one `<article class="news-item">` block
  to the top of the list.
- Add a publication: open `publications.html` and copy one `<div class="pub">` block.
- The menu is repeated at the top of every page. If you add a new page,
  copy an existing page in the same folder and change its content.
