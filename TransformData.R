# Will convert the .sav file to .csv file

library(foreign)
library(dplyr)

setwd('/Users/pamelariviere/CodeRepo/RCode/PSYCH201a/Project') # set PATH to location of .sav file

color.ctxt <- read.spss('/Users/pamelariviere/CodeRepo/RCode/PSYCH201a/Project/ColorContext_PSYCH201A.sav', to.data.frame = T)
color.ctxt <- color.ctxt[order(color.ctxt$Subject),] # sort the rows by Subject ID

write.csv(color.ctxt, 'color_data_pr.csv') # write the dataframe as csv

