# Generated with JReleaser 1.0.0 at 2022-05-26T05:20:05.406894Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot-file"
LABEL "org.opencontainers.image.description"="Redis Input/Output Tools"
LABEL "org.opencontainers.image.url"="https://developer.redis.com/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="2.15.5"
LABEL "org.opencontainers.image.revision"="5e2d86f8140d2afb1b89c9f4633ff5b517c2a05b"


COPY assembly/ /

RUN unzip riot-file-2.15.5.zip && \
    rm riot-file-2.15.5.zip && \
    chmod +x riot-file-2.15.5/bin/riot-file


ENV PATH="${PATH}:/riot-file-2.15.5/bin"

ENTRYPOINT ["/riot-file-2.15.5/bin/riot-file"]
