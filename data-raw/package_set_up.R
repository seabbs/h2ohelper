
#install.packages("devtools")
library(devtools)

# init stuffs
use_data_raw()
use_cran_badge()
use_readme_rmd()
use_testthat()
use_roxygen_md()
use_travis()
use_coverage()

#install packages as in description
devtools::install_deps()

#Suggest
use_package("pkgdown", type = "Suggests")
use_package("devtools", type = "Suggests")
use_package("testthat", type = "Suggests")

#Vignettes
use_vignette("intro")

##Build site, and make pkgdown
devtools::document()
devtools::build_vignettes()
devtools::install()
pkgdown::build_site()
