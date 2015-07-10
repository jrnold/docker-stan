FROM rocker/hadleyverse
MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com

ENV STAN_VERSION 2.6.2

RUN wget -q https://github.com/stan-dev/cmdstan/releases/download/v2.6.2/cmdstan-${STAN_VERSION}.tar.gz \
    && tar -xf cmdstan-${STAN_VERSION}.tar.gz \
    && cd cmdstan-${STAN_VERSION} \
    && make bin/stanc \
    && make bin/print \
    && ln -sf /cmdstan-${STAN_VERSION}/bin/stanc /usr/local/bin/stanc \
    && ln -sf /cmdstan-${STAN_VERSION}/bin/print /usr/local/bin/stan-print

