FROM openjdk:8-jre

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C.UTF-8
ENV TZ Asia/Tokyo
RUN curl -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar" && \
      chmod +x /usr/local/bin/embulk

RUN /usr/local/bin/embulk gem install embulk-output-mysql

RUN curl -L https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.49.tar.gz > mysql-connector-java-5.1.49.tar.gz && \
    tar -xvzf mysql-connector-java-5.1.49.tar.gz && \
    rm mysql-connector-java-5.1.49.tar.gz

COPY config/* test.csv /
