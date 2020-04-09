from platten/alpine-oracle-jre8-docker
LABEL maintainer = "Webank CTB Team"
ADD cmdb-core/target/cmdb-core-1.4.2-SNAPSHOT.jar   /application/cmdb-core.jar
ADD build/start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh
CMD ["/bin/sh","-c","/scripts/start.sh"]
RUN apt update && apt install -y tzdata
