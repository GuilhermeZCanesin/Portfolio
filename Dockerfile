# Portfolio — site estático servido por nginx (sem build de app, sem Node).
FROM nginx:1.27-alpine

# Config de servidor (headers, gzip, cache, healthcheck)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Conteúdo estático (arquivo único, autocontido)
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1/healthz >/dev/null 2>&1 || exit 1
