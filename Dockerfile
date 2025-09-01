FROM node:lts-slim

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]
