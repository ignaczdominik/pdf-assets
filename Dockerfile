FROM texlive/texlive:latest-full

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y pandoc librsvg2-bin make zip unzip

RUN mkdir /github
RUN mkdir /github/workspace
VOLUME /github/workspace
WORKDIR /github/workspace

COPY Makefile /Makefile
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["make", "TITLE='${TITLE}'", "SUBTITLE='${SUBTITLE}'","VERSION='${VERSION}'","AUTHOR='${AUTHOR}'","FILES='${FILES}'"]