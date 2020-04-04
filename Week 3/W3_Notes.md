# Advanced Optimization

```
function [jVal, gradient] = costfunction(theta)

// cost function J
jVal = (theta(1)-5)^2 + ... + (theta(2)-5)^2;

// 2x1 vector
gradient = zeros(2,1);

gradient(1) = 2 * (theta(1)-5);
gradient(2) = 2 * (theta(2)-5);
```

In Octave, we can use `fminunc()`

Options is a data structure that stores the options we want to set. Here, we set the number of max iterations to 100 iterations.
```
options = optimset('GradObj', 'on', 'MaxIter', '100');

// initial guess of theta
initialTheta = zeros(2,1);

[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);
```

This `fminunc()` function will return the optimal value for theta and also the function value at the optimum.

**Note:** Theta has to be a vector with dimension >= 2. If theta is just a real number, this `fminunc()` will not work.

---

## Basic Form

Theta is a n-dimentional vector.

Note that MathLab indexes from 1, not 0.

```
function [jVal, gradient] = costFunction(theta)

jVal = [Code to compute J(theta)]

gradient(1) = [Code to compute partial derivative of J(theta) using theta(1)]

gradient(2) = [Code to compute partial derivative of J(theta) using theta(2)]

...

gradient(n+1) = [Code to compute partial derivative of J(theta) using theta(n+1)]
```

---

# The Problem of Overfitting

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0cOOdKsMEeaCrQqTpeD5ng_2a806eb8d988461f716f4799915ab779_Screenshot-2016-11-15-00.23.30.png?expiry=1586044800000&hmac=K9B1CddqYdwECTy245Ii--phmREEKOp_gJd8UZuviS8)

1. Underfitting
2. Just right
3. Overfitting


### Underfitting

- Also called "high bias"
- When the form of our hypothesis function h maps poorly to the trend of the data
- Usually caused by a function that is too simple or uses too few features.

### Overfitting

- Also called "high variance"
- A hypothesis function that fits the available data but does not generalize well to predict new data
- Usually caused by a complicated function that creates a lot of unnecessary curves and angles unrelated to the data.
- If we have too many features, the learned hypothesis may fit the training set very well (cost function is almost 0), but may fail to generalize to new examples (predict prices on new examples, in the housing price case).

### Address Overfitting:
1. Reduce number of features:
- Manually select which features to keep
- Model selection algorithm
- Cons: Throw features away --> less info

2. Regularization
- Keep all features but reduce magnitude/values of parameters
- Works well when we have a lot of features, each of which contributes a bit to predicting *y*.

## Regularized Cost Function

If we have overfitting from our hypothesis function, we can reduce the weight that some of the terms in our function carry by increasing their cost.

Without actually getting rid of these features or changing the form of our hypothesis, we can instead modify our cost function by adding regularization term.

The λ, or lambda, is the **regularization parameter**. It determines how much the costs of our theta parameters are inflated.

With regularization, we can add another term to control the 2 goals (1 is to fit the training data well, 2 is to control the magnitude of the parameters).

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/regularization-logistic-regression.png?raw=true)

**Why adding a positive term makes this work?**

- Regularization increases the cost based on the absolute value of the thetas. Since you’re minimizing the cost, that puts pressure on the thetas to be smaller (i.e. reduce the magnitude of theta).
