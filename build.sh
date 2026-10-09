#!/usr/bin/env bash
# ============================================================
# Monta a pasta public/ com exatamente os arquivos que vão ao ar.
# É o mesmo conteúdo do ZIP que era enviado à mão.
# O Cloudflare roda este script a cada push na branch main.
# ============================================================
set -euo pipefail

rm -rf public
mkdir -p public

cp --parents \
  index.html \
  robots.txt \
  sitemap.xml \
  .nojekyll \
  rouanet/index.html \
  rouanet/termos.html \
  rouanet/privacidade.html \
  rouanet/assets/capa.webp \
  rouanet/assets/capa.jpg \
  rouanet/assets/legal.css \
  rouanet/assets/logo-zion.png \
  reconquer/index.html \
  reconquer/terms.html \
  reconquer/privacy.html \
  reconquer/assets/cover.jpg \
  reconquer/assets/logo.png \
  reconquer/assets/legal.css \
  public/

echo "public/ montada com $(find public -type f | wc -l) arquivos:"
find public -type f | sort
