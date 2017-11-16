Neuropees

# step 1 : convert .sav file into csv file.

library(foreign)
library(dplyr)

setwd('/Users/pamelariviere/CodeRepo/RCode/PSYCH201a/Project') # set PATH to location of .sav file

color.ctxt <- read.spss('/Users/pamelariviere/CodeRepo/RCode/PSYCH201a/Project/ColorContext_PSYCH201A.sav', to.data.frame = T)
color.ctxt <- color.ctxt[order(color.ctxt$Subject),] # sort the rows by Subject ID

write.csv(color.ctxt, 'color_data_pr.csv') # write the dataframe as csv

# Done by pam. See TransformData.R
# Thanks pam!

# paralles step: learn how to upload and download this script to github
# Use the clone button, save and then add to your folder of your working directory.



# Step 2a
# Do we have the same number of subjects/ measurements that the paper reported? Do the variables look right?

# Step 2b
# write code to output such as histograms and summaries of the data as used in the paper.

color_data_pr %>% filter(color=='red', pic=='neu')  %>%
  ggplot(aes(x=Pic_valence_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Red Neutral Valence Ratings', x= 'Valence Mean', y= 'Count')

color_data_pr %>% filter(color=='red', pic=='test')  %>%
  ggplot(aes(x=Pic_valence_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+ 
  labs(title = 'Red Test Valence Ratings', x= 'Valence Mean', y= 'Count')


color_data_pr %>% filter(color=='red', pic=='neu')  %>%
  ggplot(aes(x=Pic_arousal_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Red Neutral Arousal Ratings', x= 'Arousal Mean', y='Count')

color_data_pr %>% filter(color=='red', pic=='test')  %>%
  ggplot(aes(x=Pic_arousal_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Red Test Arousal Ratings', x = 'Arousal Mean', y= 'Count')

# Nicole red test relevent histo and red test nutral mean arousal
  # and another for red 

# Step 2c 
# figure out how to make an R markdown file
# Transform script into a R markdown file
