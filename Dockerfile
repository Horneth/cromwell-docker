FROM hseeberger/scala-sbt:latest

# Cromwell's HTTP Port
EXPOSE 8000

RUN apt-get update && \
    apt-get -yq install git && \
    apt-get -yq install nano

WORKDIR /home

RUN git clone https://github.com/broadinstitute/cromwell.git && \
    cd cromwell && \
    sbt
    
ADD ./bash_profile /home/.bash_profile && \
    source /home/.bash_profile