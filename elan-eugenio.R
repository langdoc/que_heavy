setwd("../elan-eugenio")

library(tidyverse)
library(FRelan)

read_cs_eaf <- function(elan_file = "data/example_good.eaf"){

# Here we get 
        
def <- read_tier(elan_file, linguistic_type = "default-lt")
words <- read_tier(elan_file, linguistic_type = "Words")
language <- read_tier(elan_file, linguistic_type = "Language")
syntax <- read_tier(elan_file, linguistic_type = "Syntax")

}
