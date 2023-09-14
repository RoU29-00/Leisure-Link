FROM amazoncorretto:17 AS build
COPY ./ /home/app
RUN cd /home/app
RUN ./gradlew 
RUN ./gradlew bootrun

FROM amazoncorretto:17-alpine
COPY --from=build /home/app/build/libs/spring-render-deploy-0.0.1-SNAPSHOT.jar /usr/local/lib/spring-render-deploy.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dfile.encoding=UTF-8","/usr/local/lib/spring-render-deploy.jar"]