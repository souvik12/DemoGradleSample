# Copyright (c) 2017 Vanderlande Industries
# All rights reserved.
#
# The copyright to the computer program(s) herein is the property of
# Vanderlande Industries. The program(s) may be used and/or copied
# only with the written permission of the owner or in accordance with
# the terms and conditions stipulated in the contract under which the
# program(s) have been supplied.
#
# $Id:  $

#FROM docker.io/openjdk:11-jre-slim

#EXPOSE 8097

#EXPOSE 443

#ADD target/clearing.jar app.jar

#ENV JAVA_OPTS=""

#ENTRYPOINT exec java $JAVA_OPTS -Dspring.profiles.active=prod -Dspring.config.additional-location=file:/etc/microservice/configuration/ -Dserver.ssl.key-store-password=$(cat /etc/x509/password/keystore) -Dserver.ssl.trust-store-password=$(cat /etc/x509/password/truststore) -jar /app.jar

FROM openjdk:8-jdk
VOLUME /temp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]