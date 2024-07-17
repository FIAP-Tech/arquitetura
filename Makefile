TIMESTAMP := $(shell date +'%F %T')

package:
	(cd ../tech5-usuarios-app; mvn clean && mvn package -DskipTests)
	(cd ../tech5-gestao-itens-app; mvn clean && mvn package -DskipTests)
	(cd ../tech5-carrinho-compras-app; mvn clean && mvn package -DskipTests)
	(cd ../tech5-pagamentos-app; mvn clean && mvn package -DskipTests)

compose:
	docker-compose build

up:
	docker-compose up

daemon:
	docker-compose up -d

down:
	docker-compose down

status:
	docker ps -a

cleanup:
	docker rm tech5-usuarios-app
	docker rm tech5-gestao-itens-app
	docker rm tech5-carrinho-compras-app
	docker rm tech5-pagamentos-app

cleanup-images:
	docker rmi $$(docker images | grep "^tech5" | awk "{print $$3}")
