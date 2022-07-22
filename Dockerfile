# Generated with JReleaser 1.1.0 at 2022-07-22T06:07:42.818466081Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-stream"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.16.1"
LABEL "org.opencontainers.image.revision"="e7afd7393d4f00b06a98df0697929a341db3a280"


COPY assembly/ /

RUN unzip riot-stream-2.16.1.zip && \
    rm riot-stream-2.16.1.zip && \
    chmod +x riot-stream-2.16.1/bin/riot-stream


ENV PATH="${PATH}:/riot-stream-2.16.1/bin"

ENTRYPOINT ["/riot-stream-2.16.1/bin/riot-stream"]
