####### BASE ############
FROM jboss/wildfly:19.1.0.Final

####### MAINTAINER ############
MAINTAINER "Michael Biarnés Kiefer" "mbiarnes@redhat.com"

####### ENVIRONMENT ############
ENV JAVA_OPTS -Xmx1g -Djava.security.egd=file:/dev/urandom
ENV KIE_DOCKER_SERVER_PRIVATE 172.17.42.1
ENV KIE_DOCKER_SERVER_PUBLIC kie-docker-ui.usersys.redhat.com
ENV KIE_DOCKER_JENKINS_URL https://rhba-jenkins.rhev-ci-vms.eng.rdu2.redhat.com/job/KIE/job/kie-tools/job/docker-ui-build/

####### WEBAPP ############
ADD maven/kie-docker-ui-webapp.war $JBOSS_HOME/standalone/deployments/

###### START SCRIPT #########
ADD start-kie-docker-ui.sh $JBOSS_HOME/bin/start-kie-docker-ui.sh

####### RUNNING KIE DOCKER UI ############
WORKDIR $JBOSS_HOME/bin
CMD ["./start-kie-docker-ui.sh"]
