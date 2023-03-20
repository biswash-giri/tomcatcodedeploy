#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
# aws s3 cp s3://tomcatjavafortest/SpringBootHelloWorldExampleApplication.war /var/lib/tomcat9/webapps/ROOT.war

aws s3 cp s3://tomcatjavafortest/myapp-${{ github.sha }}.zip /tmp/application
unzip -qq ./myapp-${{ github.sha }}.zip -d .
cp *.war /var/lib/tomcat9/webapps/ROOT.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /var/lib/tomcat9/webapps