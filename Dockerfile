FROM maven:3.6.0-jdk-8-slim as container_node
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn install

FROM openjdk:8
COPY --from=container_node /usr/src/app/target /usr/src/app
RUN cd /usr/src/app
EXPOSE 30001
ENTRYPOINT ["java", "-jar", "test-bp-1.0.1.jar"]
