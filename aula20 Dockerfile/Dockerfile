# CRIANDO IMAGEM

# TUDO QUE ESTÁ SENDO DEFINIDO AQUI SERÁ USADO DENTRO DA IMAGEM.

# primeiramente definir imagem base e sua versão.(evitar uso da versão latest)
FROM ubuntu:22.04

# comando que será executado quando a imagem for construida.
RUN apt-get update && apt-get install python3.11 python3.11-dev python3-pip -y

# definir diretorio de trabalho da imagem
WORKDIR /app

# comando que copia toda a aplicação e joga pra dentro do container no diretorio de trabalho definido anteriormente
# ".": define que pega/copia tudo que está na raiz/mesmo diretorio junto do Dockerfile e põe dentro de /app definido anteriormente.
COPY . /app/

# instalação das dependencias do projeto
RUN pip3 install --no-cache-dir -r requirements.txt

# expor/definir uma porta para a imagem... uma porta pertencente ao container. não tem acesso
EXPOSE 8080

# variáveis de ambiente
ENV LOGOMARCA="https://thumbs.dreamstime.com/b/logotipo-de-batman-101469483.jpg"
ENV FOTO="https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Bruce_Wayne_%28The_Dark_Knight_Trilogy%29.jpg/250px-Bruce_Wayne_%28The_Dark_Knight_Trilogy%29.jpg"
ENV NOME="Bruce Wayne"
ENV IDADE="40"
ENV EMAIL="morcegao@gmail.com"
ENV PROFISSAO="empresário"
ENV SITE="www.ligadajustica.com.br"

# comandos feitos no cmd para, de fato, inicializar a aplicação propriamente dita.
CMD [ "python3", "app.py" ]