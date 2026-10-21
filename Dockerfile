FROM listmonk/listmonk:v6.1.0

# Upstream's v6.1.0 image ships ca-certificates 20251003, which still trusts the
# eMudhra-affected roots. Upgrade to the patched Alpine package (20261020-r0 or newer)
# until upstream publishes a release built after the 20 Oct 2026 advisory.
RUN apk upgrade --no-cache ca-certificates ca-certificates-bundle
