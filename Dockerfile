#Uses node version 25 (25.2.1)

FROM node:25-slim

# go to app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

#install app dependencies
RUN npm install

#Copy the rest of app
COPY . .

#Set port environment variable
ENV PORT=5000

#Expose port 5000
EXPOSE 5000

#Start the app
CMD ["npm", "run", "start"]