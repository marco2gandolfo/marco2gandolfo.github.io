# marcogandolfo-site

Personal website of Marco Gandolfo, moved from Google Sites to GitHub Pages.
Plain HTML and CSS, with no build step: GitHub serves the files as they are.

## Folder layout

- `index.html`, `news.html`, `publications.html`, `cv.html`, `contact-me.html`: the main pages
- `resources/`: MakeHuman, R tutorials and functions, Basics of TMS, Stimuli
- `online-experiments/`: Boundary Extension and Depth of field
- `assets/style.css`: all styling (colours and fonts are set at the top of the file)
- `assets/site.js`: the focus effect on the home page circles, the mobile menu and the year index
- `assets/fonts/`: Syne (your name), Instrument Sans (titles and menus), Newsreader (text) and JetBrains Mono (code), all open font licence, hosted with the site
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
  to the top of its year. For a new year, copy a whole `<section class="year">` block and add
  the year to the list near the top of the page.
- Add a publication: open `publications.html` and copy one `<div class="pub">` block.
- Update the CV: open `cv.html`. Each job or degree is one `<li class="tl">` block in the timeline;
  grants, talks and the other sections are plain lists you can copy a line from.
- The menu is repeated at the top of every page. If you add a new page,
  copy an existing page in the same folder and change its content.
