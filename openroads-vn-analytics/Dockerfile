FROM node:6

ENV workdir /var/www

RUN apt-get install git
RUN npm install -g yarn

RUN git clone https://github.com/orma/openroads-vn-analytics.git $workdir

WORKDIR $workdir

RUN yarn install

CMD ["yarn", "run", "serve"]
