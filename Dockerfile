FROM node:14

WORKING /app

COPY package.json

RUN np install

COPY . .

EXPOSE 80

CMD ["/app/feedback"]
#CMD makig use of node to call the node and execute the app.
CMD ["node","server.js"]