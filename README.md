# Portfolio

Vitrine profissional (bilíngue PT/EN) de Guilherme Zago — site estático,
arquivo único autocontido (`index.html`), servido por nginx.

## Stack
- HTML/CSS/JS puro, sem build. Todo o conteúdo é renderizado a partir de dados
  no próprio arquivo (troca de idioma e tema no cliente).
- Servido por `nginx:alpine` num container endurecido.

## Deploy (home server AZZOG)
Compose em `HomeServerConfig/portfolio/docker-compose.yml`.
Exposto na LAN (`portfolio.home`) e público via Cloudflare Tunnel
(`portfolio.azzog.com.br`) — SEM Cloudflare Access (vitrine aberta de propósito).
Nenhum dado sensível nem detalhe de infraestrutura é exposto no conteúdo.

Deploy: HomeLab UI → Deploy → `portfolio` (não requer `.env`).
