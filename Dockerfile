FROM node:6.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Set workdir
WORKDIR /hands-docker
ADD . /hands-docker

EXPOSE 3000

# Install node dependencies
RUN npm install

# Start app
CMD [ "npm", "start" ]