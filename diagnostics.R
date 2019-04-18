source('create_primary.R', echo=TRUE)
library(dplyr)
primary.old.bib <- RefManageR::ReadBib("primary-manual.bib")
nrow(summary(primary.old.bib))
nrow(summary(primary.bib))
primary.ds <- as.data.frame(primary.bib,row) %>% tibble::rownames_to_column("key")
primary.old.ds <- as.data.frame(primary.old.bib) %>% tibble::rownames_to_column("key")

anti_join(primary.ds,primary.old.ds,by=c("key"))$key
anti_join(primary.old.ds,primary.ds,by=c("key"))$key
