FROM rocker/hadleyleyverse
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

# Install rstan
RUN Rscript -e 'source("http://mc-stan.org/rstan/install.R", echo = TRUE, max.deparse.length = 2000); install_rstan()'

