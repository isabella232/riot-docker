# Generated with JReleaser 1.1.0 at 2022-08-01T21:42:17.401716313Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-redis"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.16.2"
LABEL "org.opencontainers.image.revision"="0c6bdfd6eca3ad338e895cdce10198fe8f326687"


COPY assembly/ /

RUN unzip riot-redis-2.16.2.zip && \
    rm riot-redis-2.16.2.zip && \
    chmod +x riot-redis-2.16.2/bin/riot-redis


ENV PATH="${PATH}:/riot-redis-2.16.2/bin"

ENTRYPOINT ["/riot-redis-2.16.2/bin/riot-redis"]
