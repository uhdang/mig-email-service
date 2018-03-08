build:
	docker build -t mig-email-service .

run:
	docker run --name mig-email-service --net="host" \
		-p 50054 \
		-e MICRO_SERVER_ADDRESS=:50054 \
		-e MICRO_REGISTRY=mdns \
		mig-email-service
