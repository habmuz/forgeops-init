#!/usr/bin/env bash
# This is a placeholder that you can replace with your own script to copy in assets such as images
# or a web.xml file.
# Some Environment variables that are available:
# CATALINA_HOME: The expanded openam war file is in $CATALINA_HOME/webapps/openam
# OPENAM_HOME
# DOMAIN: The cookie domain (includes leading .)
# NAMESPACE: The Kubernetes namespace
echo "AM customization script"

CATALINA_HOME:$CATALINA_HOME/webapps/openam

mkdir -p /var/tmp/patch && cp ./patch/idxAuthRequestNode-1.3.0-SNAPSHOT.jar -d /var/tmp/patch
cp -r /var/tmp/patch/idxAuthRequestNode-1.3.0-SNAPSHOT.jar "$CATALINA_HOME"/webapps/openam/WEB-INF/lib

echo "AM customization script end"
