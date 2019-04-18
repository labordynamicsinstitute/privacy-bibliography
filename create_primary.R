# Create primary bibliography from library.bib
#
# Conditionally install packages
pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
  return("OK")
}

global.libraries <- c("RefManageR")

results <- sapply(as.list(global.libraries), pkgTest)

library(RefManageR)
library.bib <- RefManageR::ReadBib("library.bib")
primary.bib <- library.bib[keywords="primary"]
RefManageR::WriteBib(primary.bib,file="primary.dynamic.bib")
