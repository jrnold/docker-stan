This repository contains a few Dockerfiles related to [Stan](http://mc-stan.org/).

# rstan

Installs the **R** packages [rstan](http://mc-stan.org/rstan.html) and [loo](https://github.com/jgabry/loo).

This builds from [rocker/verse](https://registry.hub.docker.com/u/rocker/verse/) to provide an image with Rstudio and common **R** [tidyverse](https://tidyverse.com packages.
See the [rocker](https://github.com/rocker-org/rocker) site for more information on using Rstudio with R. It inclues the following packages:

- [rstan](http://mc-stan.org/interfaces/rstan.html)
- [rstanarm](http://mc-stan.org/interfaces/rstanarm.html)
- [bayesplot](http://mc-stan.org/interfaces/bayesplot.html)
- [loo](http://mc-stan.org/interfaces/loo.html)
- [shinystan](http://mc-stan.org/interfaces/shinystan.html)

#
# Containers and status

| Docker Container Source on GitHub             | Docker Hub Build Status and URL
| :---------------------------------------      | :-----------------------------------------
| rstan        | [good](https://registry.hub.docker.com/u/jrnold/rstan/)
