# Pinned to the version that has been running since the 2026-03-20 deploy.
# Bump deliberately, one release line at a time, with a siv-n8n-db backup first:
# n8n migrates the database forward on boot and cannot migrate it back.
FROM n8nio/n8n:2.12.3

ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https

EXPOSE 10000

ENTRYPOINT ["n8n", "start"]
