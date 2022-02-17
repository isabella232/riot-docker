# Generated with JReleaser 1.0.0-M2 at 2022-02-17T00:40:24.343662Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-file"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.15.4"
LABEL "org.opencontainers.image.revision"="8b106f9d4065050521ca39ade95cb9978e07ab7f"


COPY assembly/ /

RUN unzip riot-file-2.15.4.zip && \
    rm riot-file-2.15.4.zip && \
    chmod +x riot-file-2.15.4/bin/riot-file


ENV PATH="${PATH}:/riot-file-2.15.4/bin"

ENTRYPOINT ["/riot-file-2.15.4/bin/riot-file"]
