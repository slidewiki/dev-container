FROM slidewiki/runtime:latest

ADD scripts /bin
RUN mkdir /inf

WORKDIR /nodeApp
VOLUME /nodeApp

CMD ["container.up"]    # instead of ENTRYPOINT so user can call alternate command
