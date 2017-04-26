FROM java:8

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN apt-get install openjdk-8-jdk
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin" ,"HelloWorld"]
