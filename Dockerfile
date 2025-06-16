FROM eclipse-temurin:17

RUN apt-get update && apt-get install -y git curl unzip && rm -rf /var/lib/apt/lists/*

RUN curl -Lo Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
