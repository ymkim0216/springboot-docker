FROM openjdk:17-jdk-slim
ADD /build/libs/*.jar app.jar
ENTRYPOINT ["java","-Djava.seccurity.edg=file:/dev/./urandom","-jar","/app.jar"]