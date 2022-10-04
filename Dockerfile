FROM node

WORKDIR /usr/src/

COPY . .

EXPOSE 5000

RUN npm i && npx tsc && npx prisma generate

CMD ["node", "dist/src/server.js" ]