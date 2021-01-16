# change the endoint env variable in the deployment .yaml to change location of your agent
# change target URL below to alter the test target
java \
-DtargetUrl=http://$FLASK_SERVER_OTEL_SERVICE_HOST:$FLASK_SERVER_OTEL_SERVICE_PORT/echo \
-Dcom.sun.management.jmxremote.port=3000 \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.rmi.port=3000 \
-javaagent:/opt/splunk-otel-javaagent.jar \
-jar ./target/java-app-1.0-SNAPSHOT.jar
