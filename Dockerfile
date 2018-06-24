FROM openjdk:8
ADD target/docker-mokjo-app.jar docker-mokjo-app.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "docker-mokjo-app.jar"]