#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://tomcatjavafortest/app.war /var/lib/tomcat9/webapps/app.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /var/lib/tomcat9/webapps