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

## Analysis
The Iris dataset contains four characteristics (length and width of sepals and petals) of 50 samples from three species of Iris (Iris setosa, Iris virginica and Iris versicolor). These measurements were used to create a model to group the species.
In the graph we can see that the data for setosa are concrete (pink group), but versicolor and virginica overlap each other (blue and red group). This happens because the length of the petal of the setosa class is shorter than the length of the petal of the two other classes. Therefore this group distances itself from the others.

## Youtube link
[https://youtu.be/QH04RgoE718](https://youtu.be/QH04RgoE718)

## Collaborators
* **Anahi Estrada** - [Github](https://github.com/anahi-17)
* **Lilia Rosales** - [Github](https://github.com/liliarsis)
