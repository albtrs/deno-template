FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install curl unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
ENV DENO_INSTALL /root/.deno
ENV PATH $DENO_INSTALL/bin:$PATH
