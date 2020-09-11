# RabbitMQ with MQTT and Management 
Dockerfile for a RabbitMQ-Broker with MQTT and Web-Management enabled. 

Easy Run: 

```bash 
docker run \
    --name rabbitmq \
    -p 1883:1883 \
    -p 4369:4369 \
    -p 5671-5672:5671-5672 \
    -p 8883:8883 \
    -p 15672:15672 \
    -p 15675:15675 \
    -p 15692:15629 
    -p 25672:25672  
    jreichwald/rabbitmq_mqtt
``` 

Webbased Management-Console can be accessed using http://localhost:15672