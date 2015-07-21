This repository contains a few Dockerfiles related to [Stan](http://mc-stan.org/).

# rstan

Installs the **R** packages [rstan](http://mc-stan.org/rstan.html) and [loo](https://github.com/jgabry/loo).

This builds from [rocker/hadleyverse](https://registry.hub.docker.com/u/rocker/hadleyverse/) to provide an image with Rstudio and common **R** packages.
See the [rocker](https://github.com/rocker-org/rocker) site for more information on using Rstudio with R.

# cmdstan

Installs `CmdStan`. The executables `stanc` and `stan-print` are added to the path.

This image is built from the `jrnold/rstan` image so that `rstan` is available for the analysis of results.

# cmdstan-light

Like `CmdStan`, but without the **R**. It's just the CLI executable.


# Containers and status

| Docker Container Source on GitHub             | Docker Hub Build Status and URL
| :---------------------------------------      | :-----------------------------------------
| rstan (plus Rstudio)           | [good](https://registry.hub.docker.com/u/jrnold/rstan/)
| cmdstan (cmdstan plus rstan and Rstudio)          | [good](https://registry.hub.docker.com/u/jrnold/cmdstan/)
| cmdstan-light (cmdstan without R)            | [good](https://registry.hub.docker.com/u/jrnold/cmdstan-light)

