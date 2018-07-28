.PHONY: all

all:
	docker pull visonliii/webapp; \
  docker run -p 8080:8080 visonliii/webapp 

test:
	curl http://localhost:8080/
