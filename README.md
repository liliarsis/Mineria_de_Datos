# Unit 1

## Introduction
Data mining is the process of discovering patterns in large data sets involving methods at the intersection of machine learning, statistics, and database systems.

Next, the practices carried out in this course will be shown.

## Practice 1

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

Create an R script that will count how many of these numbers fall between -1 and 1 and divide
by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

Hint:
1. Initialize sample size
2. Initialize counter
3. loop for(i in rnorm(size))
4. Check if the iterated variable falls
5. Increase counter if the condition is true
6. return a result <- counter / N

## Practice 2

 Find 20 more functions in R and make an example of it.
