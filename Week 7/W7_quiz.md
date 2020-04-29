# Week 7 - Quiz

## 1

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W7_Quiz/W7_Quiz_Q1.png?raw=true)

The figure shows a decision boundary that is overfit to the training set, so we'd like to increase the bias / lower the variance of the SVM. We can do so by either decreasing (not increasing) the parameter C or increasing (not decreasing) σ^2.

## 2

This figure shows a "narrower" Gaussian kernel centered at the same location which is the effect of decreasing σ^2.

## 3

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W7_Quiz/W7_Quiz_Q3.png?raw=true)

A. For examples with y(i) = 1, only the cost-1(θT * x-i) term is present. As you can see in the graph, this will be zero for all inputs greater than or equal to 1.

D. For examples with y(i) = 0, only the cost-0(θT * x-i) term is present. As you can see in the graph, this will be zero for all inputs less than or equal to -1.

## 4

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W7_Quiz/W7_Quiz_Q4.png)

B. When you add more features, you increase the variance of your model, reducing the chances of underfitting.

C. A neural network with many hidden units is a more complex (higher variance) model than logistic regression, so it is less likely to underfit the data.


## 5

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W7_Quiz/W7_Quiz_Q5.png)

A. When x = l-1, the Gaussian kernel has value exp(0)=1, and it is less than 1 otherwise.

B. The SVM without any kernel (ie, the linear kernel) predicts output based only on
θT * x, so it gives a linear / straight-line decision boundary, just as logistic regression does.
