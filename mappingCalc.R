#' @title mappingCalc
#' @description Performs mapping of
#' provided latitude and longitude
#' @name mappingCalc
#' @param x Latitude
#' @param y Longitude
#' @param data Data being used to plot x and y

install.packages("sf")
install.packages("ggplot2")
library(sf)
library(ggplot2)

mapfunc <- function(data)
{
  my_sf <- st_as_sf(data, coords = c('longitude','latitude'))

  ggplot(my_sf) +
    geom_sf(aes(color = "cluster"))
}

