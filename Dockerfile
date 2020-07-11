FROM restic/restic

RUN apk add make

ENV WORKDIR /work

COPY production.mk $WORKDIR
COPY Makefile $WORKDIR

ENV RESTIC_REPOSITORY rest:http://test:test@192.168.1.101:8000/data
ENV RESTIC_PASSWORD test
