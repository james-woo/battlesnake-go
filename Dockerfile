FROM alpine:latest

WORKDIR "/opt"

ADD .docker_build/battlesnake-go /opt/bin/battlesnake-go
ADD ./static /opt/static

EXPOSE 4000
ENV PORT 4000

CMD ["/opt/bin/battlesnake-go"]