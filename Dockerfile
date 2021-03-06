FROM rabbitmq:3.8.3-alpine

ENV RABBITMQ_VERSION=3.8.3

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_web_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_prometheus
RUN rabbitmq-plugins enable --offline rabbitmq_auth_backend_oauth2

RUN echo 'NODENAME=rabbit@localhost' > /etc/rabbitmq/rabbitmq-env.conf

EXPOSE 15672
EXPOSE 15675
EXPOSE 15692
EXPOSE 1883
EXPOSE 8883