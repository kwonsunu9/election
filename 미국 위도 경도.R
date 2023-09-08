library(devtools)
devtools::install_github("hrbrmstr/albersusa")
library(albersusa) #to use usa_composite()
us <- usa_composite()

library(ggmap) #to use fortify()
us_map <- fortify(us, region="name")
head(us_map)
us_map_long <- us_map %>% group_by(id) %>% summarise(mead_long=mean(long))
us_map_lat <- us_map %>% group_by(id) %>% summarise(mead_long=mean(lat))
us_map_long
us_map_lat
write.csv(us_map_long, 'C:/apps/analysis/long.csv')
write.csv(us_map_lat, 'C:/apps/analysis/lat.csv')
