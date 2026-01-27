FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# 3️⃣ Copy JAR into container
# mvn clean package to check the target folder and jar name
COPY target/dunno-0.0.1-SNAPSHOT.jar app.jar

# 4️⃣ Expose application port
EXPOSE 8080

# 5️⃣ Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]