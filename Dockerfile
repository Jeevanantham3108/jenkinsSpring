FROM openjdk:8

ADD target/jenkins-springboot.jar jenkins-springboot.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","jenkins-springboot.jar"]