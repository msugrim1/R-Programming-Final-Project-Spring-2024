install.packages("sf")
install.packages("ggplot2")
install.packages("caret")
install.packages("ggplot2")
install.packages("GGally")
install.packages("psych")
install.packages("ggpubr")
install.packages("reshape")
library(caret)
library(ggplot2)
library(GGally)
library(psych)
library(ggpubr)
library(reshape)
library(sf)
library(ggplot2)

#Mapping Fnt
mapfunc <- function(data)
{
  my_sf <- st_as_sf(data, coords = c('longitude','latitude'))

  ggplot(my_sf) +
    geom_sf(aes(color = "cluster"))
}

#Linear Regression Fnt
LM <- function(data, x, y)
{
  lm(x ~ y, data)
}

#Basic Calculations
addition <- function(x,y)
{
  result <- x + y

  print("Result: ")
  print(result)
}

subtraction <- function(x,y)
{
  result <- x - y

  print("Result: ")
  print(result)
}

multiplication <- function(x,y)
{
  result <- x * y

  print("Result: ")
  print(result)
}

division <- function(x,y)
{
  result <- x / y

  print("Result: ")
  print(result)
}

#Test Data
data <- read.csv("C:/Users/mos01/Downloads/R-Programming-msugrim-Final_Project/School_Neighborhood_Poverty_Estimates_Current.csv")
data

#Test Calculation Fnts
df_est <- data.frame(name = data$School.Name, esitmate = data$Income.to.poverty.Ratio..Estimate)
df_est

addition(259, 261)
subtraction(250, 169)
multiplication(239, 255)
division(370, 319)

#Test Linear Regression
df_main <- data.frame(name = data$School.Name, esitmate = data$Income.to.poverty.Ratio..Estimate, error = data$Income.to.poverty.Ratio..Standard.Error)
estimate <- data$Income.to.poverty.Ratio..Estimate
error <- data$Income.to.poverty.Ratio..Standard.Error
df_main

LM(df_main, estimate, error)


#Test Map Fnt
df_coord <- data.frame(name = data$School.Name, latitude = data$LAT, longitude = data$LON)
df_coord

mapfunc(df_coord)



