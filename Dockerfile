#On importe l'image de la version de node utilisée dans le conteneur
FROM node:13.12.0-alpine
# On utilise
WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

RUN npm install react-scripts@3.4.1 -g

COPY . .

CMD ["npm", "start"]