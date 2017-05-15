FROM frolvlad/alpine-glibc

RUN apk add --update ca-certificates \
    && rm -rf /var/cache/apk/*

ADD ./mayu-infopusher /mayu-infopusher
ADD ./embedded/ /embedded

ENTRYPOINT ["/mayu-infopusher"]
CMD [ "--help" ]
