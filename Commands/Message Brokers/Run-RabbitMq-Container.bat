docker run -d --name test-rabit -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest -p 5672:5672 -p 15672:15672 -t rabbitmq:3.13.1-management
