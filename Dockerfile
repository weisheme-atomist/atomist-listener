FROM node:8

# Create application directory
RUN mkdir -p /app
WORKDIR /app

# Install application dependencies
COPY package.json /app/
RUN npm install

# Bundle app source
COPY . /app

ENV SUPPRESS_NO_CONFIG_WARNING true
ENV NPM_CONFIG_LOGLEVEL warn
ENV NODE_ENV production

EXPOSE 2866

CMD [ "npm", "start" ]