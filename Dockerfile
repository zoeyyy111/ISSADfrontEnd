FROM node:20-alpine
WORKDIR /FRONTEND-MASTER
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm install
RUN npm run build
# Starting our application
EXPOSE 3000
CMD [ "npm","start" ]