FROM bellsoft/liberica-openjdk-alpine:17.0.7-7
COPY ./src ./src
RUN mkdir ./out
RUN javac -sourcepath ./src -d out src/org/jcore/sample/Main.java
CMD java -classpath ./out org.jcore.sample.Main
