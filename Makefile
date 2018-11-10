run: stop
	docker-compose up -d

stop:
	docker-compose stop
	docker-compose rm -f

clean:
	docker-compose config --services | xargs docker rm -f
