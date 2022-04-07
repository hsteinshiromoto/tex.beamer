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