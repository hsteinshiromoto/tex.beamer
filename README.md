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
