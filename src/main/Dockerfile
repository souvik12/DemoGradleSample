FROM openjdk:8-jdk
VOLUME /tmp
ADD sample-0.0.1.jar app.jar
RUN bash -c 'touch/app.jar'
ENTRYPOINT exec java -jar app.jar
