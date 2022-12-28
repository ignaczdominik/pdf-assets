FROM ubuntu:22.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
  pandoc \
  librsvg2-bin \
  texlive-full \
  make 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]