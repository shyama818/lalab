.libPaths("/home/shinichi/workspace/___system/Rlib")
if (!require("readr")) install.packages("readr")
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("eeptools")) install.packages("eeptools")
if (!require("stringr")) install.packages("stringr")
if (!require("Hmisc")) install.packages("Hmisc")
if (!require("haven")) install.packages("haven")
if (!require("rmatio")) install.packages("rmatio")
if (!require("foreign")) install.packages("foreign")
if (!require("chron")) install.packages("chron")
if (!require("papeR")) install.packages("papeR")
if (!require("car")) install.packages("car")
if (!require("qqplotr")) install.packages("qqplotr")

library(readr)
library(tidyverse)
library(ggplot2)
library(eeptools)
library(stringr)
library(Hmisc)
library(haven)
library(rmatio)
library(foreign)
library(chron)
library(plyr)
library(papeR)
library(car)
library(qqplotr)

library(devtools)
library(roxygen2)
library(R.matlab)
library(pracma)
library(matrixStats)
library(MASS)
library(R.utils)
library(microbenchmark)
library(Rcpp)
library(RcppArmadillo)
library(lar)
library(larcpp)



adj <- readRDS("/home/shinichi/workspace/test/Dataset/___datasets/adj/___data/adj.rds")
anti <- readRDS("/home/shinichi/workspace/test/Dataset/___datasets/anti/___data/anti.rds")
bld <- readRDS("/home/shinichi/workspace/test/Dataset/___datasets/bld/___data/bld.rds")
bldef <- readRDS("/home/shinichi/workspace/test/Dataset/___datasets/bldef/___data/bldef.rds")
demog <- readRDS("/home/shinichi/workspace/test/Dataset/___datasets/demog/___data/demog.rds")

# Creation of ML Data 
demog___ml1 <- demog[,c("BMI","BSHR","BSSYS","BSDIA","BLWT","AGECAT","WT1CLS","WT2CLS","TRTGRP","SEX","ETHNIC")] 
# Handling of Missing Data 
demog___ml1 <- miss_main(demog___ml1, c("BSHR","BSSYS","BSDIA","BLWT","AGECAT","WT1CLS","WT2CLS","TRTGRP","SEX","ETHNIC"), c("BMI"), c(1,1,1,1,2,2,2,3,3,3), 0) 
save_data(demog___ml1,"demog___ml1","/home/shinichi/workspace/test/Tree/test/TRTGRP/AGECAT/SEX/ETHNIC/BMI/ml1/___datasets/demog___ml1")

output <- ta_strat(demog___ml1,NULL,c("demog___ml1","test_error","prediction","feature_rank"), .fun = function(xx) {
ml_main(xx, c("BSHR","BSSYS","BSDIA","BLWT","AGECAT","WT1CLS","WT2CLS","TRTGRP","SEX","ETHNIC"), c("BMI"), c(1,1,1,1,2,2,2,3,3,3), 4, 0, 70, 30, 0, 1e-5, 3, 3, 2) 
})
save_data(output$test_error,"test_error","/home/shinichi/workspace/test/Tree/test/TRTGRP/AGECAT/SEX/ETHNIC/BMI/ml1/___datasets/test_error")

save_data(output$prediction,"prediction","/home/shinichi/workspace/test/Tree/test/TRTGRP/AGECAT/SEX/ETHNIC/BMI/ml1/___datasets/prediction")

save_data(output$feature_rank,"feature_rank","/home/shinichi/workspace/test/Tree/test/TRTGRP/AGECAT/SEX/ETHNIC/BMI/ml1/___datasets/feature_rank")

saveRDS(c(1), file="/home/shinichi/workspace/___system/___user/shyama818/end/_end.R")


