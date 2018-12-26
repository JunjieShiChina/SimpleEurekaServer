FROM java:8
MAINTAINER junjieshi
ADD SimpleEurekaServer.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8761
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","jar","/app.jar"]