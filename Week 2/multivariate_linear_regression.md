# Multivariate Linear Regression

## Gradient Descent in Practice
### 1. Feature Scaling

Feature scaling is a method used to normalize the range of independent variables or features of data.

Motivation: Range of values of raw data varies widely --> in some machine learning algorithms, objective functions will not work properly without normalization.

It makes sure features are on similar scale &rarr; helps GD converge more quickly.

Ex:

x<sub>1</sub> = size (0 - 2000 feet<sup>2</sup>) &rarr; x<sub>1</sub> = size (in feet<sup>2</sup>) / 2000

x<sub>2</sub> = number of bedrooms (1-5) &rarr; x<sub>2</sub> = number of bedrooms / 5

### 2. Mean normalization

Replace x<sub>i</sub> with x<sub>i</sub> - μ<sub>i</sub> to make features have approximately zero mean.

Do not apply to x<sub>0</sub> = 1
