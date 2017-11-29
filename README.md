
<!-- README.md is generated from README.Rmd. Please edit that file -->
H2o Helper
==========

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/h2ohelper)](https://cran.r-project.org/package=h2ohelper) [![Travis-CI Build Status](https://travis-ci.org/seabbs/h2ohelper.svg?branch=master)](https://travis-ci.org/seabbs/h2ohelper)

This package aims to provide utility, quality of life, and presentation improving wrappers around the functionality provided by the [h2o](http://docs.h2o.ai/) R package.

Installation
------------

You can install h2ohelper from github with:

``` r
# install.packages("devtools")
devtools::install_github("seabbs/h2ohelper")
```

Docker
------

This package has been developed in docker based on the `rocker/tidyverse` image, to access the development environment enter the following at the command line (with an active docker daemon running),

``` bash
docker pull seabbs/h2ohelper
docker run -d -p 8787:8787 -p 54321:54321 -e USER=seabbs -e PASSWORD=h2ohelper --name h2ohelper seabbs/h2ohelper
```

The rstudio client can be accessed on port `8787` at `localhost` (or your machines ip).
