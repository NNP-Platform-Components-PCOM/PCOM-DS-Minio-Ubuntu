# syntax=docker/dockerfile:1.7
#
# PCOM-DS-Minio-Ubuntu
# Pinned upstream image (minio/minio:RELEASE.2025-09-07T16-13-09Z) republished under the NNP Data Store namespace.

FROM minio/minio:RELEASE.2025-09-07T16-13-09Z

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION="RELEASE.2025-09-07-v1"

LABEL org.opencontainers.image.title="pcom-ds-minio-ubuntu" \
      org.opencontainers.image.description="NNP Data Store component: minio-ubuntu" \
      org.opencontainers.image.vendor="Nubo Native Platform" \
      org.opencontainers.image.source="https://github.com/NNP-Platform-Components-PCOM/PCOM-DS-Minio-Ubuntu" \
      org.opencontainers.image.url="https://github.com/NNP-Platform-Components-PCOM/PCOM-DS-Minio-Ubuntu" \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.created="${BUILD_DATE}"

EXPOSE 9000 9001

ENTRYPOINT ["/usr/bin/minio"]
CMD ["server", "/data", "--console-address", ":9001"]
