FROM andrewosh/binder-base

USER root

# Add Maven dependencies
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk maven && apt-get clean
RUN git clone git@github.com:maveme/temp-mauricio.git
RUN cd temp-mauricio && jupyter kernelspec install jupyter_java_kernel/src/main/resources/JavaKernel
