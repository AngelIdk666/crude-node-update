# Etapa 1: Construir la aplicación
FROM node:16-alpine as build

# Crear y establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install --production

# Copiar el código fuente de la aplicación
COPY . .

# Etapa 2: Crear la imagen final
FROM node:16-alpine

# Crear y establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar desde la etapa de construcción
COPY --from=build /usr/src/app /usr/src/app

# Exponer el puerto en el que corre la API
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
