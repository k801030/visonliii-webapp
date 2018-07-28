.PHONY: all

all:
	docker pull visonliii/webapp; \
  docker run -d -p 8080:8080 visonliii/webapp 

test:
	curl -v http://localhost:8080/
