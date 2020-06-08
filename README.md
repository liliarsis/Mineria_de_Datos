# Unit 3
## Introduction
K-means clustering (MacQueen, 1967) is a method commonly used to automatically partition a data set into k groups. 

## Implement the K-means grouping model with the Iris.csv dataset

```
# K-Means Clustering
# Set our workspace
getwd()
setwd("C:/Users/W 10 PRO/Downloads/Mineria_Datos/DataMining/Unidad 4")
getwd()

# Importing the dataset
iris = read.csv('iris.csv')
head(iris)

#Deletes the last column "Species"
iris2 <- iris[,-5] 
head(iris2)

#Set random seed
set.seed(29)
# Fitting K-Means to the dataset
#K-means clustering with 3 clusters of sizes 62, 38, 50
kmeans = kmeans(x = iris2, centers = 3)
kmeans
y_kmeans = kmeans$cluster
y_kmeans

#Extract the information about accuracy of species in each cluster
table(iris$species, kmeans$cluster)

#Install.packages('cluster')
library(cluster)
# Visualising the clusters
clusplot(iris2, y_kmeans, 
         lines = 0,
         color = TRUE, 
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Iris flowers'),
         xlab = 'Sepal length',
         ylab = 'Sepal width')


```
![Cluster](https://github.com/liliarsis/mineria_de_datos/blob/unit3/evaluacion_4/irisClusterPlot.png)

## Collaborators
* **Anahi Estrada** - [Github](https://github.com/anahi-17)
* **Lilia Rosales** - [Github](https://github.com/liliarsis)
