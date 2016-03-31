#install.packages("osmplotr")
#install.packages("tmap")
#install.packages("rgdal")
#install.packages("sp")
#install.packages("mapview")
library(osmplotr)
library(tmap)
library(sp)

?osmplotr
b = bb("Leeds")
class(b)
#b = as.vector(b)
#class(b)
h = extract_osm_objects(key = "highway", bbox =  b, extra_pairs = c("maxspeed", "20"))
h60 = extract_osm_objects(key = "highway", bbox =  b, extra_pairs = c("maxspeed", "60"))
summary(h)
h = h$obj
plot(h60$obj)
plot(h, col = "red", add = TRUE)
mapview::mapview(h)

