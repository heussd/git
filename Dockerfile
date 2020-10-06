FROM alpine

RUN apk --update --no-cache add git less openssh

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
