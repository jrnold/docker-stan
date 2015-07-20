FROM rocker/hadleyverse:latest
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

# Install clang to use as compiler
# clang seems to be more memory efficient with the templates than g++
# with g++ rstan cannot compile on docker hub due to memory issues
RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends \
                   clang

RUN mkdir -p $HOME/.R \
    && echo "CXX=clang++\n" >> $HOME/.R/Makevars \
    && echo "CC=clang\n" >> $HOME/.R/Makevars

# Install rstan
RUN install2.r --error \
    inline \
    RcppEigen \
    StanHeaders \
    rstan \
    KernSmooth \
    && Rscript -e 'rstan::set_cppo("fast")'

# Install loo
RUN install2.r --error \
    matrixStats \
    && Rscript -e 'devtools::install_github("jgabry/loo")'

