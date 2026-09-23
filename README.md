[![DOI](https://zenodo.org/badge/249904685.svg)](https://zenodo.org/badge/latestdoi/249904685) [![Build_and_test_code](https://github.com/hsteinshiromoto/tex.beamer/actions/workflows/ci.yml/badge.svg)](https://github.com/hsteinshiromoto/tex.beamer/actions/workflows/ci.yml) ![Python Version](https://img.shields.io/badge/python-3-blue?style=flat) ![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/hsteinshiromoto/tex.beamer?style=flat)

<!-- [![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/hsteinshiromoto/tex.beamer/Docker/master?style=for-the-badge)](https://img.shields.io/github/workflow/status/hsteinshiromoto/tex.beamer/CI?style=for-the-badge) -->

# 1. TeX.Beamer
A Presentation Template for XeLaTeX

# 2. Contents

- [1. TeX.Beamer](#1-texbeamer)
- [2. Contents](#2-contents)
- [3. Repository Structure](#3-repository-structure)
- [4. How to Run](#4-how-to-run)
  - [4.1. Compiling your deck](#41-compiling-your-deck)
  - [4.2. Cleaning up auxiliary files](#42-cleaning-up-auxiliary-files)
- [5. Fonts](#5-fonts)
- [6. Slide Layout](#6-slide-layout)
  - [6.1. Header](#61-header)
  - [6.2. Footer](#62-footer)
  - [6.3. Changing the layout](#63-changing-the-layout)

# 3. Repository Structure

```
.
├── CITATION.cff
├── CITATION.cff-e
├── Dockerfile
├── Dockerfile.base
├── LICENSE
├── Makefile
├── README.md
├── bin
│   └── post-checkout
├── journal                     <- Record of changes, one file per day
├── poetry.lock
├── pyproject.toml
├── src
│   ├── conf                    <- Config files
│   │   ├── commands.tex
│   │   ├── environments.tex    <- Environments settings
│   │   └── settings.tex
│   ├── fonts                   <- Vendored Jost*, see section 5
│   │   ├── Jost-400-Book.otf
│   │   ├── Jost-400-BookItalic.otf
│   │   ├── Jost-700-Bold.otf
│   │   ├── Jost-700-BoldItalic.otf
│   │   ├── AUTHORS.txt
│   │   └── OFL.txt
│   ├── imgs
│   │   └── logo.eps
│   └── main.tex
└── tex.beamer.code-workspace
```

# 4. How to Run

## 4.1. Compiling your deck
```bash
$ make
```

## 4.2. Cleaning up auxiliary files
```bash
$ latexmk -c
```

# 5. Fonts

The template uses two typefaces. The slide body uses Helvetica. The header, the footer, and
the footnotes use Jost\*.

Jost\* is a geometric sans serif in the Futura tradition, by
[indestructible type\*](https://github.com/indestructible-type/Jost). Four weights live in
`src/fonts/`, so the deck builds the same way on every machine. No font install is needed.
Jost\* carries the SIL Open Font License 1.1. The license text and the author credit stay
next to the font files, in `src/fonts/OFL.txt` and `src/fonts/AUTHORS.txt`.

Helvetica is not in the repository. XeLaTeX loads it from the operating system when it is
there. If it is absent, the template falls back to TeX Gyre Heros, which ships with TeX Live.
TeX Gyre Heros is URW Nimbus Sans, and it matches the metrics of Helvetica. A machine without
Helvetica therefore produces the same line breaks and the same page count.

To change either typeface, edit the font block near the top of `src/conf/settings.tex`.

# 6. Slide Layout

## 6.1. Header

A dark bar runs across the top of every slide. It shows the name of each section. The current
section is white and the other sections are grey.

Under each section name sits one bullet per slide of that section. The bullet of the current
slide is filled. The bullets together show the position of the slide in the whole deck.

## 6.2. Footer

A dark band runs across the bottom of every slide except the title slide. It shows three
items. The short author goes on the left. The short title goes in the center. The slide
number and the total go on the right.

A progress bar forms the top edge of the band. The filled part of the bar shows how much of
the deck is done.

The short author and the short title come from the optional arguments of `\author` and
`\title` in `src/main.tex`:

```tex
\title[XeLaTeX Template]{My XeLaTeX Template}
\author[h.stein.shiromoto@gmail.com]{Humberto \sc Stein Shiromoto}
```

The text in square brackets is the short form. The footer uses it. Keep it short, because the
band gives each item one third of the slide width.

## 6.3. Changing the layout

The `headline` and `footline` templates sit under the `% Headline` and `% Footline` banners
in `src/conf/settings.tex`. The colors use the Material palette, which the same file defines.
`ggrey900` paints both bars. `gblue500` fills the progress bar and `ggrey700` paints its
track.

The header bar centers its contents with the `ht` and `dp` keys of its `beamercolorbox`. Their
sum sets the height of the bar. Change one and change the other by the same amount, or the
title page and the section pages move too. Those pages draw a blue band down to `\headheight`.

The `frametitle` template sits under the `% Frametitle` banner in the same file. Its `sep` key
sets the padding on all four sides at once. It therefore sets the height of the blue band and
the indent of the title together. `leftskip` adds to the left side alone, so use it to set the
indent without a change to the height.
