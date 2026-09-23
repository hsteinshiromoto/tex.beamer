# Summary

A running record of the work on `tex.beamer`, newest first.

## 2026-09-23 — Center the frame title in its band

The stock `frametitle` template only cancels its bottom padding when the caller passes no
optional argument. This template passes one, so the title sat low in the blue band. A custom
template with symmetric padding centers it. See [2026-09-23.md](2026-09-23.md).

## 2026-09-22 — Modernize the header, the footer, and the typefaces

The body moved to Helvetica, with TeX Gyre Heros as the fallback. The header, the footer, and
the footnotes moved to Jost\*, vendored in `src/fonts/` under the OFL.

The original request named Futura. Futura is not in TeX Live, is macOS only and proprietary,
and its regular weight sets the Restricted License embedding bit. Jost\* is a Futura revival
that the repository can carry and the PDF can embed. See [2026-09-22.md](2026-09-22.md).

The header keeps the section names and the mini frames but drops the `smoothbars` gradient for
a flat bar. The footer drops the black band for a hairline rule and gains a progress bar on the
bottom edge.
