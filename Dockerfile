# Generated with JReleaser 1.0.0-M1 at 2022-02-08T07:12:51.8421Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-redis"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.15.2"
LABEL "org.opencontainers.image.revision"="53fc643085f07acaced6a7a7e13ae71e45bf1b1e"


COPY assembly/ /

RUN unzip riot-redis-2.15.2.zip && \
    rm riot-redis-2.15.2.zip && \
    chmod +x riot-redis-2.15.2/bin/riot-redis


ENV PATH="${PATH}:/riot-redis-2.15.2/bin"

ENTRYPOINT ["/riot-redis-2.15.2/bin/riot-redis"]
