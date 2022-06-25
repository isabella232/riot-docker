# Generated with JReleaser 1.0.0 at 2022-06-25T18:40:04.260101Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-file"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.16.0"
LABEL "org.opencontainers.image.revision"="c1720d7c61bf10a97e749932fb84a7e04556e7cb"


COPY assembly/ /

RUN unzip riot-file-2.16.0.zip && \
    rm riot-file-2.16.0.zip && \
    chmod +x riot-file-2.16.0/bin/riot-file


ENV PATH="${PATH}:/riot-file-2.16.0/bin"

ENTRYPOINT ["/riot-file-2.16.0/bin/riot-file"]
