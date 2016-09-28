FROM node:4.4

# Create app repository
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install 

# Bundle app source
COPY . /usr/src/app


EXPOSE 9091
CMD node server.js
