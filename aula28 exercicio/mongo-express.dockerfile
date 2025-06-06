FROM mongo-express:0.54

EXPOSE 8081

# não é uma boa prática
# ip do container do mongodb "inspect... ipadress"
ARG MONGO=$MONGOIP

ENV ME_CONFIG_MONGODB_SERVER=$MONGO

ENV ME_CONFIG_MONGODB_PORT=27017