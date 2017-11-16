Neuropees

# step 1 : convert .sav file into csv file.

# import packages 
library(foreign)
library(dplyr)
library(tidyverse)

# setwd('/Users/pamelariviere/CodeRepo/RCode/PSYCH201a/Project') # set PATH to location of .sav file
color_data_pr = read.csv("color_data_pr.csv")

# Done by pam. See TransformData.R
# Thanks pam!

# paraller step: learn how to upload and download this script to github
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

# Nicole red test relevant histo and red test neutral mean arousal
  # and another for red 

# Pam, histograms for blue arousal & valence / neutral & test: Shows the distribution of subjects who assigned 
# a given mean valence or arousal score for the blue pictures in a given neutral v. test condition

# think more about what it means to collapse the arousal and valence ratings across the pictures (seems strange)
color_data_pr %>% filter(color=='blue', pic=='neu')  %>%
  ggplot(aes(x=Pic_valence_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Blue Neutral Valence Ratings', x= 'Valence Mean', y= 'Count')

color_data_pr %>% filter(color=='blue', pic=='test')  %>%
  ggplot(aes(x=Pic_valence_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+ 
  labs(title = 'Blue Test Valence Ratings', x= 'Valence Mean', y= 'Count')

color_data_pr %>% filter(color=='blue', pic=='neu')  %>%
  ggplot(aes(x=Pic_arousal_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Blue Neutral Arousal Ratings', x= 'Arousal Mean', y='Count')

color_data_pr %>% filter(color=='blue', pic=='test')  %>%
  ggplot(aes(x=Pic_arousal_MEAN))+ geom_histogram(binwidth = .05) + scale_x_continuous(breaks=seq(0,6,.5))+
  labs(title = 'Blue Test Arousal Ratings', x = 'Arousal Mean', y= 'Count')


# bar plots with means for arousal & valence per condition

ggplot(color_data_pr, aes(x=Condition, Pic_valence_MEAN)) +
  geom_bar(stat="summary", fun.y="mean", position="dodge")

ggplot(color_data_pr, aes(x=pic, Pic_arousal_MEAN, fill=color)) +
  geom_bar(stat="summary", fun.y="mean", position="dodge")

ggplot(color_data_pr, aes(x=color, Pic_arousal_MEAN)) +
  geom_bar(stat="summary", fun.y="mean", position="dodge")

# ------------------- Sean wrote up this code for ANOVA -----------------------
# don't add to markdown file yet!!!
# summary(aov(data=color_data_pr, Pic_arousal_MEAN ~ pic*color))
# 
# summary(aov(data=color_data_pr, Pic_valence_MEAN ~ pic*color))


# ------------------------------------------------------------------------------
# 
# Step 2c 
# figure out how to make an R markdown file
# Transform script into a R markdown file
