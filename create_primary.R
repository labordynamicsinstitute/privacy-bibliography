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

library.bib <- RefManageR::ReadBib("library.bib")
primary.bib <- library.bib[keywords="primary"]
# This is used by the online system - it will be discarded and not committed
RefManageR::WriteBib(primary.bib,file="primary_dynamic.bib")

# manually execute: only if you want to permanently update the primary.bib
#RefManageR::WriteBib(primary.bib,file="primary.bib")

