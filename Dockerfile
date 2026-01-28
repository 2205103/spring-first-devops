# FROM eclipse-temurin:21-jdk-alpine

# WORKDIR /app

# # Install Maven
# RUN apk add --no-cache maven

# # Copy source code
# COPY pom.xml .
# COPY src ./src

# # Build and run in same container
# RUN mvn clean package -DskipTests

# # 3️⃣ Copy JAR into container
# # mvn clean package to check the target folder and jar name
# COPY target/dunno-0.0.1-SNAPSHOT.jar app.jar

# # 4️⃣ Expose application port
# EXPOSE 8080

# # 5️⃣ Run the application
# ENTRYPOINT ["java", "-jar", "app.jar"]


FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Install Maven
RUN apk add --no-cache maven

# Copy source code
COPY pom.xml .
COPY src ./src

# Build and run in same container
RUN mvn clean package -DskipTests

# 4️⃣ Expose application port
EXPOSE 8080

# 5️⃣ Run the application
ENTRYPOINT ["java", "-jar", "target/dunno-0.0.1-SNAPSHOT.jar"]