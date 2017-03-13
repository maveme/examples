FROM andrewosh/binder-base

USER root

# Add Maven dependencies
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk maven && apt-get clean
RUN git clone https://fcbd7be79d121e136bf78e7ee898e944f4e2538a@github.com/maveme/jupyter_java_kernel.git
RUN jupyter kernelspec install jupyter_java_kernel/src/main/resources/JavaKernel
