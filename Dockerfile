FROM openjdk:8-jdk-alpine
 
RUN wget http://mirror.nbtelecom.com.br/apache/jmeter/binaries/apache-jmeter-5.0.tgz
RUN tar -xvzf apache-jmeter-5.0.tgz
RUN rm apache-jmeter-5.0.tgz

RUN mv apache-jmeter-5.0 /jmeter

ENV JMETER_HOME /jmeter

# Add JMeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
