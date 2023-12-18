# Use uma versão mais recente do Node.js como a imagem base
FROM node:18-buster

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos necessários para o diretório de trabalho
COPY package*.json ./
COPY next.config.js ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos para o diretório de trabalho
COPY . .

# Construa o aplicativo Next.js
RUN npm run build

# Exponha a porta em que o Next.js será executado
EXPOSE 4000

# Defina a variável de ambiente para o modo de produção
ENV NODE_ENV production

# Comando para iniciar o servidor Next.js
CMD ["npm", "start"]
