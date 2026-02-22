# Typst Slides Starter

This folder contains a minimal slide deck written in Typst.

## 1) Install Typst (macOS)

```bash
brew install typst
```

## 2) Compile once

```bash
typst compile slides.typ slides.pdf
```

## 3) Live-reload while editing

```bash
typst watch slides.typ slides.pdf
```

Open `slides.pdf` in Preview (or your PDF viewer) while `watch` is running.

## Edit tips

- Each `#pagebreak()` starts a new slide.
- `= Heading` creates slide titles.
- You can add images with `#image("path/to/image.png", width: 80%)`.
