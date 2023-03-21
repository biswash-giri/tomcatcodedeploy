#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder

mv /usr/local/codedeployresources/*.war /var/lib/tomcat9/webapps/ROOT.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /var/lib/tomcat9/webapps