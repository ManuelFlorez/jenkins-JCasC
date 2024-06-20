FROM jenkins/jenkins:lts-jdk21

LABEL maintainer="manuelflorezw@gmail.com"

USER root

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

COPY casc.yaml /var/jenkins_home/casc.yaml

COPY seedjob.groovy /usr/local/seedjob.groovy

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
