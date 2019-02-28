FROM node:11.10

RUN apt-get update \
  && apt-get install -y \
  git \
  ssh \
  vim \
  curl \
  wget

RUN mkdir -p /var/log/nodeapp

RUN mkdir -p /root/.ssh/
COPY keys/id_rsa /root/.ssh/
COPY keys/id_rsa.pub /root/.ssh/

COPY .env /root/.env
COPY magic.sh /root/magic.sh
RUN /root/magic.sh

WORKDIR /var/www/nodeapp

EXPOSE $NODEAPP_PORT

STOPSIGNAL SIGTERM

CMD npm i && npm run start

# CMD "vim"
