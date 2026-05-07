#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

render_one() {
  local input_dir="$1"
  local pdf_name="$2"
  local source_file="$input_dir/guide-source.html"
  local output_file="$input_dir/$pdf_name"
  local file_url="file://$source_file"

  playwright pdf "$file_url" "$output_file" >/dev/null
}

render_one "$ROOT_DIR" "sam-3d-2-0-ai-3d-model-generator-guide.pdf"
render_one "$ROOT_DIR/variants/vercel" "sam-3d-2-0-ai-3d-model-generator-vercel-guide.pdf"
render_one "$ROOT_DIR/variants/github-pages" "sam-3d-2-0-ai-3d-model-generator-github-pages-guide.pdf"
render_one "$ROOT_DIR/variants/pricing-guide" "sam-3d-2-0-ai-3d-model-generator-pricing-guide.pdf"
render_one "$ROOT_DIR/variants/tool-page-guide" "sam-3d-2-0-ai-3d-model-generator-tool-page-guide.pdf"
render_one "$ROOT_DIR/variants/showcase-guide" "sam-3d-2-0-ai-3d-model-generator-showcase-guide.pdf"
render_one "$ROOT_DIR/variants/text-to-video-guide" "sam-3d-2-0-ai-3d-model-generator-text-to-video-guide.pdf"
render_one "$ROOT_DIR/variants/image-to-video-guide" "sam-3d-2-0-ai-3d-model-generator-image-to-video-guide.pdf"
