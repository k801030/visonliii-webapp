.PHONY: all

all: docker-pull docker-run 

docker-pull:
	docker pull visonliii/webapp;
docker-run:
	docker run -d -p 8080:8080 visonliii/webapp;

integration-test:
	curl -v http://localhost:8080/
