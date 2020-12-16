# import packages
library(cluster)
library(ggplot2)
library(plyr)
library(lattice)
library(graphics)

# data
x <- c(85,70,68,79,82,88)
y <- c(67,51,55,63,67,72)
clsample <- data.frame(x,y)
clsample
dim(clsample)
clsample1 <- data.matrix(clsample)
clsample1
cldata <- clsample[,1:2]
cldata
class(cldata)

# k-means clustering
km <- kmeans(cldata, centers = 2, nstart = 10)
km
km$cluster # clustering vector
km$centers # centroid of each cluster
km$withinss
km$betweenss
km$totss

# Visualizing clusters
plot(cldata[km$cluster == 1,], col = "red",xlim = c(min(cldata[,1]),max(cldata[,1])),ylim = c(min(cldata[,2]),max(cldata[,2])))
points(cldata[km$cluster == 2,],col = "blue")
