# quarteracrewonderland

Quarter Acre Wonderland Blog

## Image processing

`scripts/process-image.sh` resizes a source image into the two sizes the blog
uses — a 1200px-wide standard image (post header / card hero) and a 400px-wide
thumbnail — and saves both as JPEGs into `assets/images/posts/`.

### Requirements (WSL2 Ubuntu)

Install ImageMagick:

```bash
sudo apt update
sudo apt install imagemagick
```

The script prefers ImageMagick 7 (`magick`) and falls back to the v6 `convert`
binary that ships in Ubuntu's default repos. Either is fine.

### Usage

```bash
./scripts/process-image.sh path/to/source.jpg
```

The script writes two files and prints their paths:

```
assets/images/posts/source.jpg          # 1200px wide
assets/images/posts/source-thumb.jpg    # 400px wide
```

The output basename is derived from the input filename — lowercased, with
spaces and underscores replaced by hyphens. Source images smaller than the
target widths are left at their original size (no upscaling).
