postgres-up: check-pre-requisites
	docker-compose up -d


postgres-down: check-pre-requisites
	docker-compose down


check-pre-requisites:
	@command -v docker || (echo "Docker not installed!" && exit 1)
	@command -v docker-compose || (echo "Docker compose not installed!" && exit 1)
