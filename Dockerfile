# Maven

FROM amazoncorretto:17

# War 파일의 위치
COPY target/Season2_Team4_Main_Spring_Admin-0.0.1-SNAPSHOT.war app.war

ENTRYPOINT ["java", "-jar", "/app.war"]
