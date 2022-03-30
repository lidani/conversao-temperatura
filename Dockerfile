FROM node:14.17.0-alpine

# criação de usuário e grupo
RUN addgroup -S lidani \ 
    && adduser -S lidani -G lidani -h /lidani

# seta o user com o criado acima
USER lidani

# diretório do usuário acima
WORKDIR /lidani/app

# aqui devemos copiar e setar os arquivos para o usuário criado
# para evitar ter acesso total caso o container seja invadido
# copiando apenas os packages
COPY --chown=lidani src/package*.json .

# instalando os pacotes da aplicação
RUN npm install

# copiando a aplicação toda
COPY --chown=lidani src/ .

# expõe a porta da nossa aplicação
EXPOSE 8080

# roda nosso servidor
ENTRYPOINT [ "node", "server.js" ]