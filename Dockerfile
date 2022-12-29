FROM texlive/texlive:latest-full

ARG DEBIAN_FRONTEND=noninteractive
ARG TITLE
ARG SUBTITLE
ARG VERSION
ARG AUTHOR
ARG FILES

RUN apt update && apt install -y pandoc librsvg2-bin make 

VOLUME [/github/workspace]
WORKDIR /github/workspace

CMD ["make", "TITLE='${TITLE}'", "SUBTITLE='${SUBTITLE}'","VERSION='${VERSION}'","AUTHOR='${AUTHOR}'","FILES='${FILES}'"]