FROM openjdk:8-jdk
VOLUME /tmp
ADD Sample-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch/app.jar'
ENTRYPOINT["java","-jar","/app.jar"]