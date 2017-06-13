FROM frolvlad/alpine-glibc

RUN apk add --update ca-certificates \
    && rm -rf /var/cache/apk/*\
    && mkdir /embedded

ADD ./mayu-infopusher /mayu-infopusher
ADD ./embedded/ipmitool /embedded/

ENTRYPOINT ["/mayu-infopusher"]
CMD [ "--help" ]
