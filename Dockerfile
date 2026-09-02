# Pinned. Bump deliberately, with a siv-n8n-db backup or PITR point first:
# n8n migrates the database forward on boot and cannot migrate it back.
# 2.12.3 -> 2.37.7 on 2026-09-02 (Docker Hub 'latest' that day; no breaking changes listed 2.13-2.37).
FROM n8nio/n8n:2.37.7

ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https

EXPOSE 10000

ENTRYPOINT ["n8n", "start"]
