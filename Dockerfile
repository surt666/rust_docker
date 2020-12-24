FROM amazonlinux:latest

RUN yum update
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
#RUN yum install musl-tools -y
RUN yum -y install zip wget
RUN yum -y install python3 python3-pip
RUN pip3 install awscli
RUN rustup target add x86_64-unknown-linux-musl
RUN pip3 install aws-sam-translator docopt 
RUN wget https://raw.githubusercontent.com/awslabs/serverless-application-model/develop/bin/sam-translate.py 
RUN pip3 install cloudformation-cli-python-plugin 
RUN yum install -y gcc gcc-c++ make openssl openssl-devel git
ENV OPENSSL_LIB_DIR=/usr/lib64/openssl
ENV OPENSSL_INCLUDE_DIR=/usr/include/openssl
RUN git clone git://git.musl-libc.org/musl
RUN cd musl && ./configure && make && make install
ENV PATH=$PATH:/usr/local/musl/bin
