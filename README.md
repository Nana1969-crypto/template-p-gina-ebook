# Ebook Landing Page Template — Zion Productions

**Premium, high-conversion landing page** (ClickFunnels / Kajabi style) for selling digital ebooks directly. Single page, no external dependencies, 100% responsive, and configurable through one JSON object.

> **Live configuration:** this page is already set up for the real product **“How to Reconquer Lost Love — A Guide to Rekindling the Flame in the Other”** (Zion Productions). To launch the next ebook, you only edit the `CONFIG` object — you never have to touch the layout, CSS, or rendering code.

## ⚡ How to use

1. Open `index.html` in a browser — it ships ready with the *How to Reconquer Lost Love* product.
2. To adapt it to another ebook, edit **only the `CONFIG` object** in the `<script>` at the end of the file.
3. Publish the file on any static host (Hotmart, Netlify, Vercel, GitHub Pages, etc.).

> Everything (HTML, CSS and JS) lives in a single file, with no CDNs — it works offline and loads instantly.

## ✅ Before you go live — 3 things to replace

| What | Where | Current value |
|------|-------|---------------|
| **Hotmart checkout link** | `CONFIG.checkout_url` | `https://pay.hotmart.com/REPLACE-WITH-YOUR-HOTMART-CHECKOUT-LINK` |
| **Cover image** (optional) | `CONFIG.capa` | *empty → uses the built-in cover recreation* |
| **Legal document links** | footer `data-doc` links | placeholder alerts |

### About the cover
`CONFIG.capa` is empty, so the page renders a **built-in cover** that faithfully recreates the printed cover (dark background, gold heart divider, title, gold italic subtitle, `ZION — Digital Content`). To use the real cover photo, host the image and set `CONFIG.capa` to its URL — it will replace the built-in cover automatically (and fall back to it if the URL fails to load).

## 🧩 Page structure (conversion framework)

| # | Section | Purpose |
|---|---------|---------|
| — | **Hero** | Zion Productions logo, emotional headline, subheadline, ebook cover, instant CTA |
| 1 | **Emotional pain** | Makes the reader recognize themselves in the problem |
| 2 | **Insight / pattern break** | Flips the logic: why the common approach fails |
| 3 | **Ebook presentation** | Visual proof of the promise + what's inside (real chapters) |
| 4 | **Benefits** | The concrete transformation the reader gets |
| 5 | **Offer** | Price, anchoring, countdown, primary CTA |
| 6 | **Bonuses** | Value stacking |
| 7 | **7-day guarantee (Hotmart)** | Risk reversal |
| 8 | **Testimonials** | Social proof (optional — currently OFF) |
| 9 | **FAQ** | Objection handling |
| — | **Final CTA** | Last call with urgency |
| — | **Footer** | Zion Productions © 2026, CNPJ, Terms / Privacy / Disclaimer |

## 🎛️ Configuration (`CONFIG` object)

```json
{
  "titulo": "Headline — use a dash (—) to color-highlight the second part",
  "subtitulo": "Emotional subheadline",
  "cta": "I Want to Win Them Back",
  "capa": "https://.../cover.jpg   (empty = built-in cover)",
  "cor_primaria": "#d62e4f",
  "checkout_url": "https://pay.hotmart.com/your-product",
  "nome_ebook": "How to Reconquer Lost Love",
  "promessa_ebook": "A guide to rekindling the flame in the other",
  "preco": "$27",
  "preco_de": "$47",
  "parcelas": "up to 3×",

  "dores":      [ { "titulo": "", "texto": "" } ],
  "conteudo":   [ { "titulo": "", "texto": "" } ],
  "beneficios": [ { "icone": "🧭", "titulo": "", "texto": "" } ],
  "bonus":      [ { "icone": "📱", "titulo": "", "texto": "", "valor": "$27 value" } ],
  "faq":        [ { "p": "Question?", "r": "Answer." } ],

  "mostrar_depoimentos": false,
  "depoimentos": [ { "nome": "", "papel": "", "texto": "" } ]
}
```

### Flexible fields
- **`beneficios`** and **`bonus`** accept both objects and plain strings (`["Benefit 1", "Benefit 2"]`).
- **`faq`** accepts `{ "p", "r" }` or `{ "pergunta", "resposta" }`.
- **`cor_primaria`** automatically recalibrates every accent tone (buttons, glows, badges).
- **`capa`** empty → uses the built-in cover; if the URL fails to load, it falls back automatically.
- **`mostrar_depoimentos: false`** hides the entire social-proof section (currently off for this product).

> The keys are kept in Portuguese for backward compatibility across the Zion Productions template library — all customer-facing copy is in English.

## ✅ Built-in conversion (CRO) features

- Emotional headline with color highlight on the trigger phrase
- Ebook cover in a 3D mockup (visual proof of the promise)
- CTA repeated at strategic points + **sticky bar on mobile**
- Announcement bar (topbar) with scarcity
- Persistent **24h countdown** (urgency)
- Price anchoring (was/now) and installments
- **7-day guarantee** seal (risk reversal)
- FAQ accordion for objection handling
- Scroll-reveal animations (respect `prefers-reduced-motion`)
- Basic SEO / Open Graph in the `<head>`

## ⚖️ Footer & compliance

- **Zion Productions © 2026**
- **CNPJ: 13.204.926/0001-40**
- Links: Terms of Use · Privacy Policy · Disclaimer
- **Disclaimer:** educational product; results vary from person to person.

> Remember to replace the legal links (`data-doc`) with your official documents and the `checkout_url` with your real Hotmart product link.
