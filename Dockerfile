# Usa una imagen base de Node.js
FROM node:16

# Define el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY . .

# Instala las dependencias
RUN npm install

# Expone el puerto que se usará
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
