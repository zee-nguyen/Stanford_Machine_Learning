# Multivariate Linear Regression



## Gradient Descent in Practice

### 1. Feature Scaling
Feature scaling is a method used to normalize the range of independent variables or features of data.

**Motivation:** Range of values of raw data varies widely &rarr; in some machine learning algorithms, objective functions will not work properly without normalization.

For example, if we use Euclidean distance and one of the features has a broad range of values, our result will be governed by this feature &rarr; the range of all features should be normalized so that each feature contributes approximately proportionately to the final distance.


It makes sure features are on similar scale &rarr; helps GD converge more quickly.



Ex:



x<sub>1</sub> = size (0 - 2000 feet<sup>2</sup>) &rarr; x<sub>1</sub> = size (in feet<sup>2</sup>) / 2000



x<sub>2</sub> = number of bedrooms (1-5) &rarr; x<sub>2</sub> = number of bedrooms / 5



### 2. Mean normalization



Replace x<sub>i</sub> with x<sub>i</sub> - μ<sub>i</sub> to make features have approximately zero mean.

Do not apply to x<sub>0</sub> = 1



There is another form of the means normalization which is when we divide by the standard deviation which is also called standardization.

### 3. Debugging Gradient Descent

Make a plot with number of iterations on the x-axis. Now plot the cost function, J(θ) over the number of iterations of gradient descent. If J(θ) ever increases, then you probably need to decrease α.


**Automatic convergence test**

Declare convergence if J(θ) decreases by less than E in one iteration, where E is some small value such as 10−3. However in practice it's difficult to choose this threshold value.

### Summary

- If α is too small: slow convergence.

- If α is too large: ￼J(θ) may not decrease on every iteration and thus may not converge.
