#!/usr/bin/env bash
# Resize a source image into a standard blog image (1200px wide) and a
# thumbnail (400px wide), saving both to assets/images/posts/ as JPEGs.
# Usage: scripts/process-image.sh <input-image>

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <input-image>" >&2
  exit 64
fi

INPUT="$1"

if [[ ! -f "$INPUT" ]]; then
  echo "Error: input file not found: $INPUT" >&2
  exit 66
fi

# Prefer ImageMagick 7 (`magick`) but fall back to the v6 `convert` binary,
# which is what Ubuntu's default repos ship.
if command -v magick >/dev/null 2>&1; then
  IM=(magick)
elif command -v convert >/dev/null 2>&1; then
  IM=(convert)
else
  echo "Error: ImageMagick not found. Install with: sudo apt install imagemagick" >&2
  exit 69
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUT_DIR="$REPO_ROOT/assets/images/posts"
mkdir -p "$OUT_DIR"

# Normalize the output basename: strip extension, lowercase, replace
# spaces/underscores with hyphens so URLs stay clean.
BASE="$(basename "$INPUT")"
NAME="${BASE%.*}"
NAME="$(echo "$NAME" | tr '[:upper:] _' '[:lower:]--')"

STANDARD="$OUT_DIR/${NAME}.jpg"
THUMB="$OUT_DIR/${NAME}-thumb.jpg"

# `1200x>` only shrinks images larger than 1200px wide; smaller sources
# are left at their original size to avoid upscaling.
"${IM[@]}" "$INPUT" \
  -auto-orient \
  -colorspace sRGB \
  -strip \
  -resize '1200x>' \
  -quality 85 \
  "$STANDARD"

"${IM[@]}" "$INPUT" \
  -auto-orient \
  -colorspace sRGB \
  -strip \
  -resize '400x>' \
  -quality 82 \
  "$THUMB"

echo "$STANDARD"
echo "$THUMB"
