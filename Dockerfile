FROM gcr.io/distroless/java:11

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["/usr/bin/java","-cp","app:app/lib/*","org.github.kalexmills.microsvcspringboot.Application"]