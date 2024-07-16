#!/bin/bash

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

cd ../tech5-gestao-itens-app
mvn clean
mvn package -DskipTests

cd ../tech5-usuarios-app
mvn clean
mvn package -DskipTests

cd ../tech5-pagamentos-app
mvn clean
mvn package -DskipTests

#cd ../tech5-carrinho-compras-app
#mvn clean
#mvn package -DskipTests
