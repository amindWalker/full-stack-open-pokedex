FROM scratch
LABEL docker-slim.version="linux|Transformer|1.38.0|937cad81bc1b1be05e7fc3cf0f6259c4a1f3a452|2022-08-28_05:51:34AM"
LABEL docker-slim.source.image="pokedex"


ENV PATH "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ENV NODE_VERSION "18.11.0"
ENV YARN_VERSION "1.22.19"
ENV NODE_ENV "production"

ADD files.tar /
WORKDIR /usr/src/app
USER node
EXPOSE 5000/tcp
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/sh","-c","node app.js"]
