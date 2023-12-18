# Use a imagem oficial do Node.js
FROM node:14

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos necessários para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie os arquivos do aplicativo
COPY . .

# Expõe a porta em que o aplicativo Express estará escutando
EXPOSE 80

# Comando para iniciar o servidor Express
CMD ["npm", "start"]
