# Unit 2

## Introduction
Data graphics is essential in displaying large amounts of information in a concise and concise way. It helps us to make decisions. In the R language, it is used thanks to the ggplot library.
Next, the practices carried out in this course will be shown.

# Content
- [Homework 1](#Homework-1)
- [Homework 2](#IHomework-2)
- [Homework 3](#Homework-3)
- [Homework 4](#Homework-4)
- [Homework 5](#Homework-5)
- [Homework 6](#Homework-6)
- [Homework 7](#Homework-7)
- [Practice 1](#practice-1)
- [Practice 2](#practice-2)
- [Practice 3](#practice-3)
- [Practice 4](#practice-4)
- [Evaluation](#evaluation)
- [Sources](#sources)
- [Collaborators](#Collaborators)

## Homework 1
### What is Graphical grammar?
Graphical grammar is an orderly representation system for plotting graphs. It consists of dividing the parts involved in painting data and analyzing it as if it were a matter of spelling grammar, giving each element a characteristic function. The objects thus generated are defined by overlapping feature layers.
The graphical grammar that ggplot uses is sorting and creating graphical objects with a predefined assembly structure. According to the creations created by Leland Wilkinson in 1999, graphics are objects created by the supremacy of layers. These layers are mainly:

- data: the data to be painted
- aesthetic: this layer indicates the variables we paint.
- geometries: the visual elements used to represent the data.
- facet: small multigraphs.
- statistics: aggregated representation of the data.
- coordinates: the space in which the data is painted.
- themes: ink or canvas format.

## Homework 2
### What is geom_jitter function in R?
Jittered Points
The jitter geom is a convenient shortcut for geom_point(position = "jitter"). It adds a small amount of random variation to the location of each point, and is a useful way of handling overplotting caused by discreteness in smaller datasets.

Usage
```
geom_jitter(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "jitter",
  ...,
  width = NULL,
  height = NULL,
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE
)
```

## Homework 3
### What is P value?
When you perform a hypothesis test in statistics, a p-value helps you determine the significance of your results. Hypothesis tests are used to test the validity of a claim that is made about a population. This claim that’s on trial, in essence, is called the null hypothesis.
The alternative hypothesis is the one you would believe if the null hypothesis is concluded to be untrue. The evidence in the trial is your data and the statistics that go along with it. All hypothesis tests ultimately use a p-value to weigh the strength of the evidence (what the data are telling you about the population). The p-value is a number between 0 and 1 and interpreted in the following way:

- A small p-value (typically ≤ 0.05) indicates strong evidence against the null hypothesis, so you reject the null hypothesis.
- A large p-value (> 0.05) indicates weak evidence against the null hypothesis, so you fail to reject the null hypothesis.
- p-values very close to the cutoff (0.05) are considered to be marginal (could go either way). Always report the p-value so your readers can draw their own conclusions.

For example, suppose a pizza place claims their delivery times are 30 minutes or less on average but you think it’s more than that. You conduct a hypothesis test because you believe the null hypothesis, Ho, that the mean delivery time is 30 minutes max, is incorrect. Your alternative hypothesis (Ha) is that the mean time is greater than 30 minutes. You randomly sample some delivery times and run the data through the hypothesis test, and your p-value turns out to be 0.001, which is much less than 0.05. In real terms, there is a probability of 0.05 that you will mistakenly reject the pizza place’s claim that their delivery time is less than or equal to 30 minutes. Since typically we are willing to reject the null hypothesis when this probability is less than 0.05, you conclude that the pizza place is wrong; their delivery times are in fact more than 30 minutes on average, and you want to know what they’re gonna do about it! (Of course, you could be wrong by having sampled an unusually high number of late pizza deliveries just by chance.)

## Homework 4
### Split and Lm functions in R
Split Data Into Test And Train Set
Split data from vector Y into two sets in predefined ratio while preserving relative ratios of different labels in Y. Used to split the data used during classification into train and test subsets.
Usage
```
sample.split( Y, SplitRatio = 2/3, group = NULL )
```
Fitting Linear Models
lm is used to fit linear models. It can be used to carry out regression, single stratum analysis of variance and analysis of covariance (although aov may provide a more convenient interface for these).
Usage

```
lm(formula, data, subset, weights, na.action,
   method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
   singular.ok = TRUE, contrasts = NULL, offset, …)
```   
## Homework 5
### Function gml () 

One of the great dilemmas in all data analysis is knowing which are the variables that most influence us in a given condition.
To know this, a tool that we can use is a logistic regression model: glm.
The logistic regression allows us to know which are the variables that most influence the result of the analyzed variable.

In R, the GLMs are adjusted with the glm function. The glm () function of R allows us to fit linear models of many types, we have to provide the distribution family, including those we fit with lm.
The basic syntax for obtaining a linear model is

glm (dependent ~ independent1 + independent2, family = binomial (), data = data ").

## Homework 6
### What is ElemStatLearn?
ElemStatLearn Library is a package created 2015-06-26 cointains Data Sets, Functions and Examples from the Book: "The Elements of Statistical Learning, Data Mining, Inference, and Prediction" by Trevor Hastie, Robert Tibshirani and Jerome Friedman. Useful when reading the book above mentioned, in the documentation referred to as 'the book'.

## Homework 7
### BodyPartRecognition

Applications of computer vision techniques became very popular. Among them, the recognition of human activity stands out. To recognize human activities, there is a human body part tracking system that tracks parts of the human body such as the head, torso, arms, and legs to perform activity recognition tasks in real time. To track the torso, we are using a spot tracking module to find the approximate location and size of the torso in each box. By tracking the torso, we will be able to track other body parts based on their location relative to the torso in the detected silhouette. In the proposed method for tracking human body parts, we are also using a refinement module to improve the detected silhouette by refining the foreground mask (i.e. by obtaining by subtraction background) to detect body parts with regarding the location and size of the torso. Having found the size and location of the torso, the region of each part of the human body in the silhouette will be modeled by a 2D Gaussian drop in each box to show its location, size, and position. The proposed approach described in this thesis accurately tracks body parts under different lighting conditions and in the presence of partial occlusions. The proposed approach applies to activity recognition tasks, such as approaching an object, carrying out an object, and opening a box or suitcase.

The aforementioned article focused on pose recognition in parts: detecting from a single depth image a small set of 3D position candidates for each skeletal joint
The algorithm is focused driven by two key design objectives: computational efficiency and robustness.

A single entry depth image is segmented into dense probabilistic body part labeling, with the parts defined to be spatially located near the skeleton with points of interest.
Reprojecting the inferred parts into the global space, we located the spatial modes of each part distribution and elaborated confidence-weighted proposals for the 3D losses of each skeletal joint. We treat segmentation of body parts as a pixel sorting task.
Evaluating each pixel separately avoids a combinatorial search on the different joints of the body, although within a single part, of course, there are still dramatic differences in contextual appearance.
For training data, we generate realistic synthetic depth images of humans of many shapes and sizes in a wide variety of poses taken from a large motion capture database.
We trained a deep range dominated decision forest classifier that prevents overfitting by using hundreds of miles of training images.
The simple and discriminating depth comparison imaging features produce 3D translation invariance while requiring high computational efficiency.
For greater speed, the classifier can be paralleled at each pixel on a GPU.
Finally, the spatial modes of the inferred distributions per pixel are calculated using the mean displacement that results in joint 3D proposals.

## Practice 1
### Simple Linear Regression 
We write the path of our file
```
getwd()
setwd("/Users/anahiestrada/Desktop/SimpleLinearRegression")
getwd()
```
Importing the dataset
```
dataset <- read.csv('ventas_comision.csv')
```
Splitting the dataset into the Training set and Test set
Install.packages('caTools')
The set.seed function is used to set the random seed for all scrambling functions.

```
install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$comision, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
Fitting Simple Linear Regression to the Training set
commission is the variable that we want to predict in the future depending on sales.
```
regressor = lm(formula = comision ~ Ventas,
               data = dataset)
summary(regressor)
```
Predicting the Test set results
```
y_pred = predict(regressor, newdata = test_set)
```
Visualising the Training set results
```
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$Ventas, y=training_set$comision),
             color = 'blue') +
  geom_line(aes(x = training_set$Ventas, y = predict(regressor, newdata = training_set)),
            color = 'green') +
  ggtitle('ventas vs comision (Training Set)') +
  xlab('Ventas') +
  ylab('Comision')
  ```
![resultadosP1](https://user-images.githubusercontent.com/60456115/83216809-051bfd80-a11f-11ea-9185-b1e4b8528883.png)

Visualising the Test set results
```
ggplot() +
  geom_point(aes(x=test_set$Ventas, y=test_set$comision),
             color = 'blue') +
  geom_line(aes(x = training_set$Ventas, y = predict(regressor, newdata = training_set)),
            color = 'green') +
  ggtitle('ventas vs comision (Test Set)') +
  xlab('Ventas') +
  ylab('Comision')
```
![resultadosP1 1](https://user-images.githubusercontent.com/60456115/83216840-182ecd80-a11f-11ea-8baa-6b4d98db3c59.png)

## Practice 2
```
getwd()
setwd("/Users/anahiestrada/Desktop/DataMining-master/MachineLearning/MultipleLinearRegression")
getwd()
```
Importing the dataset
```
dataset <- read.csv('50_Startups.csv')
```
Encoding categorical data 
```
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))
```
Splitting the dataset into the Training set and Test set
```
Install.packages('caTools)
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
Fitting Simple Linear Regression to the Training set
```
regressor = lm(formula = Profit ~ R.D.Spend,
               data = dataset)
summary(regressor) 
```
Predicting the Test set results
```
y_pred = predict(regressor, newdata = test_set) 
```
Visualising the Training set results
```
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$R.D.Spend, y=training_set$Profit),
             color = 'limegreen', size=2) +
  geom_line(aes(x = training_set$R.D.Spend, y = predict(regressor, newdata = training_set)),
            color = 'black') +
  ggtitle('Profit vs R.D.Spend (Training Set)') +
  xlab('R.D.Spend') +
  ylab('Profit')
```
![P 2](https://user-images.githubusercontent.com/60456115/83234874-d8c7a780-a145-11ea-8ba0-a89ef52ce5c4.png)

Visualising the Test set results
```
ggplot() +
  geom_point(aes(x=test_set$R.D.Spend, y=test_set$Profit),
             color = 'blue', size=2) +
  geom_line(aes(x = training_set$R.D.Spend, y = predict(regressor, newdata = training_set)),
            color = 'green') +
  ggtitle('Profit vs R.D.Spend (Test Set)') +
  xlab('R.D.Spend') +
  ylab('Profit')
```
![P 2 2](https://user-images.githubusercontent.com/60456115/83234911-e9781d80-a145-11ea-9c72-e7746164f219.png)

 
## Practice 3
### Multiple Linear Regression
converts the values of the state variable to numbers
```
dataset $ State = factor (dataset $ State,
levels = c ('New York', 'California', 'Florida'),
labels = c (1,2,3))
data set
```

Division of the data set into the training set and the test set
Install.packages ('caTools')
Divide the vector data into two sets, in this case, the benefit was configured to divide it into training_set and test_set.
```
library (caTools)
set.seed (123) #create random simulations that can be played. seed = a number.
split <- sample.split ($ Profit dataset, SplitRatio = 0.8)
training_set <- subset (dataset, split == TRUE) # one point and it will be true
test_set <- subset (dataset, split == FALSE) # one point and it will be false
```

Fit multiple linear regression to the training set
```
regressor = lm (formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State)
regressor = lm (formula = Profit ~.,
data = training_set)

summary (regressor)
```

Prediction of test set results
```
y_pred = predict (regressor, newdata = test_set)
y_pred
```
Allocation: visualize the multiple cladding regression model with R.D.

Building the optimal model using Backward Elimination
```
regressor = lm (formula = Profit ~ R.D. Expenses + Administration + Marketing. Expenses + Status,
data = dataset)
summary (regressor)

regressor = lm (formula = Profit ~ R.D. Expense + Administration + Marketing. Expense,
data = dataset)
summary (regressor)

regressor = lm (formula = Profit ~ R.D.Spend + Marketing.Spend,
data = dataset)
summary (regressor)

regressor = lm (formula = Profit ~ R.D.Spend + Marketing.Spend,
data = dataset)
summary (regressor)

y_pred = predict (regressor, newdata = test_set)
y_pred
```
![P 3](https://user-images.githubusercontent.com/60456115/83216876-2a107080-a11f-11ea-97bb-a1c42fb4c247.png)

The task analyzes the next spray backwards Elimination function.
Variables are created in the equation and the least influential category is removed, one after the other is excluded in the loop because it ends when all categories are analyzed. The category that remained at the end was R.D. Spend your result marked 0.
The residuals show us distances that exist between the values of the variables and the data set quality values of the R2 adjustment, which in our case is 0.9425.
```
backwardElimination <- function (x, sl) {
numVars = length (x)
for (i in c (1: numVars)) {
regressor = lm (formula = Profit ~., data = x)
maxVar = max (coef (summary (regressor)) [c (2: numVars), "Pr (> | t |)"])
if (maxVar> sl) {
j = which (coef (summary (regressor)) [c (2: numVars), "Pr (> | t |)"] == maxVar)
x = x [, -j]
}
numVars = numVars - 1
}
return (summary (regressor))
}

SL = 0.05
#dataset = dataset [, c (1,2,3,4,5)]
training set
backwardElimination (training_set, SL)
```

## Practice 4
## Backward Elimination Function
```
getwd ()
setwd ("/ Users / anahiestrada / Desktop / DataMining-master / MachineLearning / MultipleLinearRegression")
getwd ()
```

Importing the dataset
```
dataset <- read.csv ('50_Startups.csv')
```
Encoding categorical data. Convert the values of the State variable to numbers
```
dataset $ State = factor (dataset $ State,
                       levels = c ('New York', 'California', 'Florida'),
                       labels = c (1,2,3))
dataset
```

Splitting the dataset into the Training set and Test set
```
Install.packages ('caTools')
library (caTools)
```

create random simulations that can be played. seed = A number.
```
set.seed (123) 
split <- sample.split (dataset $ Profit, SplitRatio = 0.8)
```

divide data into training set
```
training_set <- subset (dataset, split == TRUE) 
```
divide data into test set
```
test_set <- subset (dataset, split == FALSE) 
```
Fitting Multiple Linear Regression to the Training set.
In this line a regressor is created and the dataset, through the lm function, in this case the training set will take the X axis
```
regressor = lm (formula = Profit ~.,
that it will use is assigned
               data = training_set) 
```
by means of the summary we can visualize the results
```
summary (regressor) 
```
Prediction the Test set results. 
We create a vector of predictions to visualize the fit curve of the data. With the predict function we obtain the predictions
```
y_pred = predict (regressor, newdata = test_set)
y_pred 
```
Building the optimal model using Backward Elimination
```
regressor = lm (formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset)
summary (regressor)

y_pred = predict (regressor, newdata = test_set)
y_pred
```
Homework analyze the follow atomation backward Elimination function
a model is created with all the variables, indicates the length of the variables, Adjust the MRL with the Training Set,the cycle continues until all variables are reviewed.
```
backwardElimination <- function (x, sl) {
  numVars = length (x) 
  for (i in c (1: numVars)) {
    regressor = lm (formula = Profit ~., data = x) 
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){#si el 
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1 
  }
  return (summary (regressor))
}
```
significance level, variables with a p-value greater than this will be discarded
```
SL = 0.05 
dataset = dataset [, c (1,2,3,4,5)]
```
shows the 5 columns with the 50 data
```
training_set 
```
in visualizing the results we see that only R.D.Spend is significant for our regression analysis.
```
backwardElimination (training_set, SL)
```
![P 4](https://user-images.githubusercontent.com/60456115/83216913-3f859a80-a11f-11ea-9288-3c7cf33eca25.png)

## Evaluation
```
#1. . We import the dataset and declare it as movies
movies <- read.csv("C:/Users/W 10 PRO/Downloads/Project-Data.csv")
#If you want you can import it manually
#movies <- read.csv(file.choose())

#2. Exploring dataset 
head(movies)#Shows top rows
colnames(movies)#Shows column names
str(movies)Shows the structure
summary(movies)#Shows summary

#3. Make filters
#Filtering by genre, take the genres of dataframe movies.
filt_gen <- movies[movies$Genre %in% c("action", "adventure", "animation", "comedy", "drama"),]

#Filtration by study, take the studies within the filter by gender.
filt_stu <- filt_gen[filt_gen$Studio %in% c("Buena Vista Studios", "WB", "Fox", "Universal", "Paramount Pictures"),]

#4. The GGPlot2 package is activated, to make the plot.
library(ggplot2)
#In case you don't have the package installed
#install.packages("ggplot2")

#5. Creating the graph using ggplot
#The variable mp (moviesplot) is created that takes, from the filter per study, its X and Y axes
# The x-axis is the Genre column and the y-axis is the Gross ... Us column.
mp <- ggplot(data = filt_stu, aes(x = Genre, y=Gross...US))
# Add box plot function
mp + geom_boxplot()

#Jitter R function adds noise to a number vector
p <- mp + geom_jitter() + geom_boxplot()
p

#Add aesthetics to jitter: size and color
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) + 
  geom_boxplot() 
p

#If we see there are some black dots, the black dots are removed and the boxplot is transparent
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) +
  geom_boxplot(alpha=0.7, outlier.colour =NA)
p

#Name added to x, y axes and title to plot
p <- p +xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
p

#Finally the graphic is customized by changing the color, size and font
#For this we use element_text,
library(extrafont)
loadfonts(device = "win")
p <- p + theme(axis.title.x = element_text(color = "Blue", size = 20) ,
               axis.title.y = element_text(color = "Blue", size = 20) ,
               axis.text.x  = element_text(size = 10),
               axis.text.y  = element_text(size = 10),
               plot.title   = element_text(size = 15),
               legend.title = element_text(size = 15),
               text = element_text(family = "Comic Sans MS"))
p
#Change the legend name of Studio y Budget...Mill
p$labels$size <- "Budget $M"
p$labels$colour <- "Studio's"
p
```
![Plot](https://github.com/liliarsis/mineria_de_datos/blob/unit2/evaluación/Rplot1.png)

From the plot the following is observed:

The most popular genre in studios is action, the least is drama.
The average gain for an action movie is 40 percent.
The genre comedy is the one that has, on average, more profit
The adventure genre has on average a lower profit.
Buena vista studios has the movie with the most profit, it is from the drama genre. Also it has the film with less profit, being this one of the animation sort.
## Link 
[![video](https://youtu.be/8Rxiuc2GyG0)](https://youtu.be/8Rxiuc2GyG0)


## Sources
- VilBer, F. (n.d.). Graficas con ggplot. Retrieved 28 May 2020, from [https://enrdados.netlify.app/post/graficas-con-ggplot/](https://enrdados.netlify.app/post/graficas-con-ggplot/)
- Wickham, H. (n.d.). geom_jitter function | R Documentation. Retrieved 28 May 2020, from [https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_jitter](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_jitter)
- Rumsey, D. J. (n.d.). What a p-Value Tells You about Statistical Data - dummies. (2020). Retrieved 28 May 2020, from [https://www.dummies.com/education/math/statistics/what-a-p-value-tells-you-about-statistical-data/](https://www.dummies.com/education/math/statistics/what-a-p-value-tells-you-about-statistical-data/)
- R-core R-core@R-project.org. (n. d.). lm function. Retrieved 28 May 2020, from 
[https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm)
- Khachatryan, H. (n.d.). sample.split function | R Documentation. Retrieved May 28, 2020, from 
[https://www.rdocumentation.org/packages/caTools/versions/1.17.1/topics/sample.split](https://www.rdocumentation.org/packages/caTools/versions/1.17.1/topics/sample.split)
- C. (2019, August 12). cran/ElemStatLearn. Retrieved May 28, 2020, from
[https://github.com/cran/ElemStatLearn/tree/master/R](https://github.com/cran/ElemStatLearn/tree/master/R)

## Collaborators
* **Anahi Estrada** - [Github](https://github.com/anahi-17)
* **Lilia Rosales** - [Github](https://github.com/liliarsis)
