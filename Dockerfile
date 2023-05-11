FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y maven && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y vim

WORKDIR /app

COPY . .

EXPOSE 8080

CMD ["bash", "run.sh"]