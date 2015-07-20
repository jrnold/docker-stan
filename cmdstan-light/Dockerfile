# Just enough to build CmdStan
# Not enough to run its tests or build the manual
FROM debian:testing

MAINTAINER Jeffrey Arnold jeffrey.arnold@gmail.com


# Essential to build stanc
RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends \
		wget \
                ca-certificates \
                bash-completion \
                build-essential \
                clang

ENV STAN_VERSION 2.7.0
ENV STAN_HOME /cmdstan-${STAN_VERSION}/


RUN wget -q https://github.com/stan-dev/cmdstan/releases/download/v${STAN_VERSION}/cmdstan-${STAN_VERSION}.tar.gz \
    && tar -xf cmdstan-${STAN_VERSION}.tar.gz \
    && rm /cmdstan-${STAN_VERSION}.tar.gz \
    && cd cmdstan-${STAN_VERSION} \
    && sed -i -e 's/CC = .*$/CC = clang\+\+/' makefile \
    && make bin/stanc \
    && make bin/print \
    && ln -sf ${STAN_HOME}/bin/stanc /usr/local/bin/stanc \
    && ln -sf ${STAN_HOME}/bin/print /usr/local/bin/stan-print

