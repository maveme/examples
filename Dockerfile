FROM andrewosh/binder-base

USER root

# Add Maven dependencies
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk maven && apt-get clean
RUN git clone https://github.com/maveme/temp-mauricio.git
RUN cd temp-mauricio && jupyter kernelspec install JavaKernel
