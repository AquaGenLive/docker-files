# JIRA image based on debian-with-java7

FROM aquagen/debian-with-java7
MAINTAINER Stephan Harbauer "docker@harbauer.org"

ENV JIRA_VERSION 6.3.4a

# Download JIRA installer
RUN mkdir /opt/tmp
WORKDIR /opt/tmp
RUN wget http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-${JIRA_VERSION}-x64.bin
RUN chmod a+x atlassian-jira-${JIRA_VERSION}-x64.bin

# Load config file
ADD response.varfile /opt/tmp/response.varfile

# Install JIRA
RUN ./atlassian-jira-${JIRA_VERSION}-x64.bin -q -varfile response.varfile


EXPOSE 8080
USER jira

# Launch Jira at startup
CMD ["-fg"]
ENTRYPOINT ["/opt/atlassian/jira/bin/start-jira.sh"]