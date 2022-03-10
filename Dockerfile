# This installs the operating system and nodejs
FROM node:14-alpine3.15

#set working directory for our app in our container
WORKDIR /src

# now copy our project files to docker image
COPY . .

#install our NPM dependenecies
RUN npm install

# set environmental variables
ENV PORT=3000

# open up port 3000
EXPOSE 3000

# run our app
CMD ["./node_modules/nodemon/bin/nodemon.js", "./index.js"]