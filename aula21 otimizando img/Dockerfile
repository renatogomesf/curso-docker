# CRIANDO IMAGEM

# TUDO QUE ESTÁ SENDO DEFINIDO AQUI SERÁ USADO DENTRO DA IMAGEM.

# definindo python como imagem base ao inves do ubuntu, pois ele já tem um sitema operacional minimo
# "alpine: versão bem reduzida/leve... a maioria das imagens terão"
FROM python:3.9-alpine

# definir diretorio de trabalho da imagem
WORKDIR /app/

# ==========================================
# dessa forma, é feito o aproveitamento do cache, pois o que mais muda num projeto são os arquivos de rotas, html, css... e o arquivo de dependencias muda muito pouco.
# ==========================================
# copia apenas o requirements.
COPY requirements.txt /app
# depois faz a instalação das dependencias do projeto
RUN pip3 install --no-cache-dir -r requirements.txt
# ==========================================

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

# só depois faz a cópia do projeto todo em si (html,css,rotas,app em si).
# é uma boa prática colocar os arquivos que mais mudam no final e os que menos mudam para cima.
COPY . /app/

# comandos feitos no cmd para, de fato, inicializar a aplicação propriamente dita.
CMD [ "python3", "app.py" ]