# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

`ce` is the "教育委員會資訊網 / Rede de Informação do Conselho de Educação" subsite of the Macao SAR
DSEDJ portal (`www.dsedj.gov.mo/ce/`). It is bilingual — Traditional Chinese (default) and Portuguese.

There is **no build system, package manager, linter, or test suite**. It is a static/Dreamweaver-era
site that is mid-migration onto the DSEDJ server-side JSP framework. Files are deployed as-is to the
portal container; there is nothing to compile locally.

## Two coexisting stacks

This is the single most important thing to understand before editing anything.

**Legacy static stack** — `*.html`, `*.php`. Hand-edited, one file per language, Dreamweaver-authored
(the `<!-- InstanceBeginEditable name="main" -->` markers are still in the markup and must be kept).
The shell is a **frameset**: `index.html` / `index-p.html` load `top.html` / `top-p.html` into a
40px `topFrame` and the page body into `mainFrame`.

**JSP stack** — `*.jsp`. Server-rendered by the DSEDJ shared framework. `index.jsp` is a single
non-frameset page that composes `topmenu.jsp` + `mainmenu.jsp` + the page body.

Migration status — the JSP versions exist for `index`, `main`, `intro`, `contact`, `comment`; `grp*`,
`edup*`, `data*`, `link*` are still static `.html`. **Do not assume a page exists in both forms.**
Also note `topmenu.jsp` still links to the old static filenames (`main.html`, `contact.html`,
`comment.php`) rather than the `.jsp` ones, so the nav and the dispatcher currently disagree.

## The shared framework lives outside this repo

`../inc/` is required by every JSP page but is **not present** in this working copy:

- `../inc/header_page.jsp`, `../inc/footer_page.jsp`, `../inc/bs_js_page.jsp`,
  `../inc/javascript_new_page.jsp`, `../inc/js/https.js`

These supply the `Lang` and `WebLib` classes, the `contextpath` variable, and the Bootstrap/jQuery
includes. Consequence: **the JSP pages cannot render from this folder alone** — you need the full
portal tree on the server to preview them.

`ce_bak/` (sibling directory) is *not* a site backup. It only holds the retired Dreamweaver design
source: `Templates/layout.dwt`, `layout-p.dwt`, `psd/*.psd`, and `_GA/`.

## Language system

`Lang.getLang()` returns `"P"` (Portuguese), `"C"` (Chinese, the default), or `"E"` (English). The
`"E"` branch is implemented throughout the framework but **this site ships no English content** — there
are no `-e` files.

Language is expressed two different ways, and mixing them up is the most common mistake:

- **In `.jsp`**: both languages live in the *same file* as an inline branch:
  `<% if(Lang.getLang().equals("P")) { %> … <% } else { %> … <% } %>`. Any new content must be added
  to **both** branches.
- **In static `.html` / `.php`**: language is a filename suffix — `intro.html` (Chinese) vs
  `intro-p.html` (Portuguese).

Per-language assets follow the same split: `css/style.css` (shared) + `css/style-c.css` (Chinese) +
`css/style-p.css` (Portuguese); images `but_home.gif` / `but_home-p.gif`, with `_o` meaning the hover
state (`but_home_o-p.gif`).

Shared UI strings come from the framework bundle via `Lang.get("key")`.

## Page dispatch

`index.jsp` reads the `?con=` request parameter, `header_page.jsp` resolves it to a filename, and
`index.jsp` renders it with `<jsp:include page="<%=con%>" />`. Resolution order in
`header_page.jsp`:

1. `con` empty or contains `http` → `main.jsp`
2. `con` listed in `nolangp` (Portuguese) or `nolange` (English) → `nodata.jsp` (page not offered in
   that language)
3. `con` listed in `septhreelang` → append the `-p` / `-e` suffix
4. otherwise → append `.jsp`, or `.html` if `con` is listed in `htmlPage`

`conori` preserves the originally requested name; `suffix` is `-p`/`-e` for Portuguese/English and
empty for Chinese. Site variables: `siteid="718350"`, `sitevar="ce"`, `server="portal"`,
`mirrorPath="https://mirror1.dsedj.gov.mo"`, `assetsPath="/assets/ce"`.

When adding a page, add it to the nav in **both** `topmenu.jsp` and `mainmenu.jsp`, under **both**
language branches, and add it to `htmlPage`/`septhreelang`/`nolangp` if it needs dispatcher special-casing.

## Navigation

- `topmenu.jsp` — top button bar: Home, Contact, Comment, Member area, plus the language-toggle
  button. Links use `target="mainFrame"` (a leftover from the frameset era).
- `mainmenu.jsp` — secondary text nav: 委員會簡介 / 專責小組 / 教育界別法人 / 參考資訊 / 常用連結.

## PHP pages

`comment.php`, `comment-p.php`, `comment_member.php`, `comment_member-p.php`, `viewcomment.php`,
`viewcomment-p.php` were **not** migrated to JSP. Each embeds an iframe pointing at the mail system
on `portal.dsedj.gov.mo/mailsys/...` and reads `username` from `$_REQUEST`.

`comment.php` and `comment-p.php` filter `<`, `>`, `"`, `(` out of `username` and redirect to
themselves if any is present — **keep that filter when editing**. `comment_member.php` and
`comment_member-p.php` bounce to the non-member page via a JS redirect at the top of the file.

## Local verification

There are no tests. What you can actually run:

```bash
php -l comment.php          # syntax-check a PHP page
```

HTML and JSP have no local compiler. For JSP changes, review the tag structure by hand and rely on
the server for rendering — the shared `../inc/` framework is required.

## Conventions

- **Cache-busting**: assets are referenced with a `?v=NN` query string (`css/style.css?v=11`,
  `images/bg_top.jpg?v=11`). Bump the number when you change an asset or browsers will serve the
  stale copy.
- Fixed 772px table layout. `images/bg_top.jpg` (header) and `images/bg_mid_bot.gif` (footer) frame
  the content column.
- `js/https.js` force-redirects the page to https.
- Google Analytics ID `G-FL22VMQK2M` lives in `gtag.jsp` and is also inlined in the PHP files.
- The Dreamweaver `MM_*` swap-image helpers are in `Inter_javascript_page.jsp`;
  `Scripts/jquery.min.js` backs the back-to-top behaviour. `Scripts/_notes/` and `images/_notes/` are
  Dreamweaver metadata and can be ignored.
- Everything is UTF-8; content is Traditional Chinese and Portuguese.

## Content areas

- `contact/` — council member profiles grouped as `asso/` (associations), `gov/` (government),
  `indiv/` (individuals); each has a `bak/` folder of retired versions. `contact/list.html` is the
  bilingual roster table, and its links still point at files that only exist under `bak/` — a known
  broken state.
- `download/` — annual lists of education-sector legal entities: `yYYYY.pdf` = entities that submitted
  their annual report, `nYYYY.pdf` = entities that have not. Years 2016 and 2017 are linked out to
  `portal.dsedj.gov.mo/webdsejspace/addon/upload/` instead of a local PDF.
- `docs/` is currently empty.
- `contact_org.html` and `contact_org`-style pages are separate one-off layouts that do not follow
  the main template.

## Known content inconsistency

The council named in the copy is inconsistent across the site. The static pages use
「教育委員會資訊網」 / *Conselho de Educação* (Education Council), while `header_page.jsp` sets
`sitename` to 「青年事務委員會資訊網」 (Youth Affairs Council) and `intro.jsp`'s body text describes
the Youth Affairs Council (*Conselho de Juventude*). `topmenu.jsp` renders `sitename` into the page
title. Confirm which council is intended before editing any council-identifying copy.
