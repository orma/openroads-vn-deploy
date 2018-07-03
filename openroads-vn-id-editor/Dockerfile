FROM node:8

ENV workdir /var/www

RUN apt-get install git
RUN npm install -g serve

RUN git clone https://github.com/orma/openroads-vn-iD.git $workdir

WORKDIR $workdir

CMD ["serve"]
