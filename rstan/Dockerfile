FROM rocker/verse:latest
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

# Install clang to use as compiler
# clang seems to be more memory efficient with the templates than g++
# with g++ rstan cannot compile on docker hub due to memory issues
RUN apt-get update \
	&& apt-get install -y --no-install-recommends ed libnlopt-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/

# Install rstan
RUN install2.r --error --deps TRUE \
    rstan

# Global site-wide config -- neeeded for building packages
RUN mkdir -p $HOME/.R/ \
    && echo "CXXFLAGS=-O3 -mtune=native -march=native -Wno-unused-variable -Wno-unused-function -flto -ffat-lto-objects  -Wno-unused-local-typedefs \n" >> $HOME/.R/Makevars

# Config for rstudio user
RUN mkdir -p $HOME/.R/ \
    && echo "CXXFLAGS=-O3 -mtune=native -march=native -Wno-unused-variable -Wno-unused-function -flto -ffat-lto-objects  -Wno-unused-local-typedefs -Wno-ignored-attributes -Wno-deprecated-declarations\n" >> $HOME/.R/Makevars \
    && echo "rstan::rstan_options(auto_write = TRUE)\n" >> /home/rstudio/.Rprofile \
    && echo "options(mc.cores = parallel::detectCores())\n" >> /home/rstudio/.Rprofile

# Install rstan
RUN install2.r --error --deps TRUE \
    rstan \
	loo \
	bayesplot \
    rstanarm \
    rstantools \
    shinystan
