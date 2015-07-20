FROM rocker/hadleyverse:latest
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

# ENV R_MAKEVARS_USER
# ENV R_MAKEVARS_SITE

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

