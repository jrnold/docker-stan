Two Dockerfiles related to [Stan](http://mc-stan.org/):

# rstan

Installs the [rstan](http://mc-stan.org/rstan.html) and [loo](https://github.com/jgabry/loo).

This builds from [rocker/hadleyverse](https://registry.hub.docker.com/u/rocker/hadleyverse/) to provide an image with Rstudio and common R packages.


# cmdstan

Installs CmdStan. The binaries `stanc`, and `stan-print` are added to the path.

This image is built from the `jrnold/rstan` image so that a full environment for analysis of Stan results is available.
