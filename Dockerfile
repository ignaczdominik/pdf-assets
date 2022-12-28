FROM texlive/texlive:latest-full

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y pandoc librsvg2-bin make 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]