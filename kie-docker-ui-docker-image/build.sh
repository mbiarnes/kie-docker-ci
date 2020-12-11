#!/usr/bin/env bash

# fail fast
set -e

echo "Building kie-docker-ui..."
KIE_ARGUMENTS=" -Dkie.dockerui.privateHost=kie-docker-ui.usersys.redhat.com -Dkie.dockerui.publicHost=kie-docker-ui.usersys.redhat.com "

mvn clean install $KIE_ARGUMENTS