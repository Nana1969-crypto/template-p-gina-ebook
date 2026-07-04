# Template de Landing Page para Ebooks — Zion Productions

Template **premium de alta conversão** (estilo ClickFunnels / Kajabi) para venda direta de ebooks digitais. Página única, sem dependências externas, 100% responsiva e configurável por um único objeto JSON.

## ⚡ Como usar

1. Abra o `index.html` no navegador — ele já vem com um exemplo pronto (nicho de reconquista amorosa).
2. Para adaptar a qualquer ebook, edite **apenas o objeto `CONFIG`** no `<script>` ao final do arquivo.
3. Publique o arquivo em qualquer hospedagem estática (Hotmart, Netlify, Vercel, GitHub Pages, etc.).

> Tudo (HTML, CSS e JS) está em um único arquivo, sem CDNs — funciona offline e carrega instantaneamente.

## 🧩 Estrutura da página (framework de conversão)

| # | Seção | Objetivo |
|---|-------|----------|
| — | **Hero** | Logo Zion Productions, headline (gatilho emocional), subheadline, capa do ebook em destaque, CTA imediato |
| 1 | **Dor emocional** | Faz o leitor se reconhecer no problema |
| 2 | **Insight / quebra de padrão** | Vira a chave: revela por que o método comum falha |
| 3 | **Apresentação do ebook** | Prova visual da promessa + o que há dentro |
| 4 | **Benefícios** | Transformação concreta que o leitor terá |
| 5 | **Oferta** | Preço, ancoragem, countdown, CTA principal |
| 6 | **Bônus** | Empilhamento de valor |
| 7 | **Garantia 7 dias (Hotmart)** | Reversão de risco |
| 8 | **Depoimentos** | Prova social (opcional) |
| 9 | **FAQ** | Quebra de objeções |
| — | **CTA final** | Última chamada com urgência |
| — | **Rodapé** | Zion Productions © 2026, CNPJ, Terms / Privacy / Disclaimer |

## 🎛️ Configuração (objeto `CONFIG`)

```json
{
  "titulo": "Headline principal — use um traço (—) para destacar a segunda parte",
  "subtitulo": "Subheadline emocional",
  "cta": "Quero recuperar meu relacionamento agora",
  "capa": "https://.../capa.jpg   (vazio = capa gerada automaticamente)",
  "cor_primaria": "#e11d6b",
  "checkout_url": "https://pay.hotmart.com/seu-produto",
  "nome_ebook": "Reconquiste",
  "promessa_ebook": "O método para recuperar seu relacionamento",
  "preco": "R$ 37,00",
  "preco_de": "De R$ 97,00",
  "parcelas": "até 3x",

  "dores":      [ { "titulo": "", "texto": "" } ],
  "conteudo":   [ { "titulo": "", "texto": "" } ],
  "beneficios": [ { "icone": "🧭", "titulo": "", "texto": "" } ],
  "bonus":      [ { "icone": "📱", "titulo": "", "texto": "", "valor": "Valor: R$ 47" } ],
  "faq":        [ { "p": "Pergunta?", "r": "Resposta." } ],

  "mostrar_depoimentos": true,
  "depoimentos": [ { "nome": "", "papel": "", "texto": "" } ]
}
```

### Campos aceitos com flexibilidade
- **`beneficios`** e **`bonus`** aceitam tanto objetos quanto strings simples (`["Benefício 1", "Benefício 2"]`).
- **`faq`** aceita `{ "p", "r" }` ou `{ "pergunta", "resposta" }`.
- **`cor_primaria`** recalibra automaticamente todos os tons de destaque (botões, brilhos, badges).
- **`capa`** vazia → usa a capa 3D gerada com o nome do ebook; se a URL falhar ao carregar, cai no fallback automaticamente.
- **`mostrar_depoimentos: false`** oculta toda a seção de prova social.

## ✅ Recursos de conversão (CRO) já embutidos

- Headline com destaque de cor no gatilho emocional
- Capa do ebook em mockup 3D (prova visual da promessa)
- CTA repetido em pontos estratégicos + **barra fixa no mobile**
- Barra de anúncio (topbar) com escassez
- **Countdown de 24h** persistente (urgência)
- Ancoragem de preço (de/por) e parcelamento
- Selo de **garantia de 7 dias** (reversão de risco)
- Prova social com estrelas, avatares e selo "verificado"
- FAQ em acordeão para quebra de objeções
- Animações de scroll-reveal (respeitam `prefers-reduced-motion`)
- SEO / Open Graph básicos no `<head>`

## ⚖️ Rodapé e conformidade

- **Zion Productions © 2026**
- **CNPJ: 13.204.926/0001-40**
- Links: Terms of Use · Privacy Policy · Disclaimer
- **Disclaimer:** produto educacional; os resultados variam de pessoa para pessoa.

> Lembre-se de substituir os links legais (`data-doc`) pelos seus documentos oficiais e o `checkout_url` pelo link real do seu produto na Hotmart.
