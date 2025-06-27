FROM docker.n8n.io/n8nio/n8n

ENV GENERIC_TIMEZONE=America/Argentina/Buenos_Aires

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]