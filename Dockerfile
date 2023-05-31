FROM gradle:7.6.1-jdk17

WORKDIR /app

# Copier les fichiers sources dans l'image
COPY src src
COPY build.gradle settings.gradle ./

# Construire le projet avec Gradle
RUN gradle build

# Exécuter le programme construit au démarrage du conteneur
CMD java -jar build/libs/*.jar

# Documenter l'utilisation du port 8080
EXPOSE 8080