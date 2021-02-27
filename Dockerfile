FROM scratch

LABEL maintainer="stephane.beuret@gmail.com"

ENV HOME=/token

EXPOSE 10001

COPY ca-certificates.crt /etc/ssl/certs/
COPY token /token
COPY app /

ENTRYPOINT ["/app"]
