setwd("../elan-eugenio")

library(tidyverse)
library(FRelan)

read_cs_eaf <- function(elan_file = "data/example_good.eaf"){

# It is good to test the function by running it line by line, to do that,
# only thing needed is to create the variable elan_file, which the function
# would normally get as one of its arguments.

        # elan_file <- "data/example_good.eaf"
        
# Here we get one by one different tiers by their linguistic types
        
        def <- read_tier(elan_file, linguistic_type = "default-lt")
        words <- read_tier(elan_file, linguistic_type = "Words")
        language <- read_tier(elan_file, linguistic_type = "Language")
        syntax <- read_tier(elan_file, linguistic_type = "Syntax")
        
# After receiving those (one can check how they look for example with `View(syntax)` )
# we need to join these to one another to build one large data frame, and this is easily
# achieved by following the logic already present in the ELAN file. So if one looks the 
# way the ID's are constructed there, the tier always has annotation_ref attributes which
# then again are annotation_id's of the tier above.
# 
# I usually look in this point which is the elements contains most elements, since often
# that is the item we want to have on one row. As far as I see, in order to follow tidy
# data principles with linguistic data, the best possibility is to have something like
# one token per row, although in some cases other ways of doing it are certainly also OK.

        left_join(words, syntax)

}
