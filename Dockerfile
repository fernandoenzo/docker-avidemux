FROM ghcr.io/fernandoenzo/debian:11
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

ENV DISPLAY :0

COPY scripts/basics /tmp
COPY static/avidemux.list /etc/apt/sources.list.d/

RUN bash /tmp/basics

CMD ["avidemux"]
