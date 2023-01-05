############## Configure ################
# Create(Build) a Node latest(18.12.1) base image
FROM node:latest
# Set the working directory to /app inside the container
WORKDIR /app
# add 
# ENV PATH /app/node_modules/.bin:$PATH
# 
COPY package-lock.json ./
#
COPY package.json ./
#
RUN npm install 
# RUN npm install react-router-dom
# 
COPY . . 
# 
CMD ["npm", "start"]