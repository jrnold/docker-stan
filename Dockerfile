FROM rocker/hadleyverse
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

# ENV R_MAKEVARS_USER
# ENV R_MAKEVARS_SITE

RUN install2.r --error \
    inline \
    RcppEigen \
    && Rscript -e 'devtools::install_url("http://cran.r-project.org/src/contrib/Archive/BH/BH_1.55.0-3.tar.gz")' \
    && Rscript -e 'install.packages("rstan",repos="http://rstan.org/repo/",dependencies=FALSE)' \
    && Rscript -e 'rstan::set_cppo("fast")'

