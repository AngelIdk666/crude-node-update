# Usa una imagen base de Node.js
FROM node:16

# Define el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY package*.json ./
COPY . .

# Instala las dependencias
RUN npm install

# Expone el puerto de la API
EXPOSE 3000

# Configura las variables de entorno para la base de datos (si no se pasan en Docker Compose)
ENV DB_HOST=localhost \
    DB_USER=root \
    DB_PASSWORD="" \
    DB_NAME=CrudNodejs \
    DB_PORT=3306

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
