# install.packages("osmplotr")
library(osmplotr)
library(tmap)

?osmplotr
b = bb("Leeds")
b = as.vector(b)
class(b)
h = extract_osm_objects(key = "highway", bbox =  b, extra_pairs = c("maxspeed", "20"))
h60 = extract_osm_objects(key = "highway", bbox =  b, extra_pairs = c("maxspeed", "60"))
summary(h)
h = h$obj
plot(h60$obj)
plot(h, col = "red", add = T)
mapview::mapview(h)

