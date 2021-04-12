# New R Script for HW 9
install.packages("tidyverse")
library(tidyverse)
library("readxl")

HW9DATA <- read_excel('C:/Users/14127/Downloads/Env Data Vis/Final Project Data/Newest EDV Project Dataset.xlsx') 

library(tidyverse)
library(ggplot2)
library(socviz)
library(readxl) 
library(dplyr)
library(plotly)
library(readr)
library(scales)
library(viridis)
library(hrbrthemes)

#Created a separate xcel sheet for trust data
PAdata <- read_csv('C:/Users/sg2362/Dropbox (Yale_FES)/2_year/Spring_2021/Data_Viz/Assignment9/HW9/trust_bubbleplot.csv') 
# Fracking_Counties <- read_xlsx('C:/Users/sg2362/Dropbox (Yale_FES)/2_year/Spring_2021/Data_Viz/Assignment9/HW9/Counties W Fracking Data.xlsx') 

#Creates Color Scheme between Dem and GOP counties
Palette1 <- c('darkblue','red')
View(PAdata)
#Added some changes suggested in the Draft Comments (i.e. using Log Scales).
#Also changed the variables to be a better indication of fracking area (# of wells instead of violation density)

#Bubble plot
NewBubble  <-  ggplot(PAdata, aes(x = log(NumberOfFrackingViolations), y= log(trustcompanies)), color = "black") + geom_point()
                                  
NewBubble  
#geom_point(alpha=0.3) +
  #scale_colour_manual(values=Palette1) +
   ## scale_size_continuous(range = c(0.1, 18))+
  #theme_ipsum() +
  #labs(title = "Highly Fracked Counties Are Less Likely To Believe There Is A Scientific Consensus On Climate Change", x = "Log Wells Per 1,000 Residents In Each County", y = "Log Wells In Each County")
  #theme(legend.position="none")
  