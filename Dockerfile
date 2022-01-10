FROM centos:7

ADD server-jre-8u202-linux-x64.tar.gz /usr/local/
RUN curl -L https://alibaba.github.io/arthas/arthas-boot.jar -o /usr/local/src/arthas-boot.jar
ENV JAVA_HOME=/usr/local/jdk1.8.0_202
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$JAVA_HOME/bin:$PATH
