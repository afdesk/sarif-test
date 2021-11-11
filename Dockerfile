FROM debian:11.1

RUN apt-get update && apt-get install -y cowsay fortune

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh

USER usr

ENTRYPOINT ["/entrypoint.sh"]