FROM amazoncorretto:8

ENV SCALA_VERSION 2.11.8
ENV SBT_VERSION 0.13.13

# Install Scala and SBT
RUN yum install -y https://downloads.lightbend.com/scala/2.11.8/scala-${SCALA_VERSION}.rpm
RUN yum install -y https://dl.bintray.com/sbt/rpm/sbt-${SBT_VERSION}.rpm
RUN sbt sbtVersion

