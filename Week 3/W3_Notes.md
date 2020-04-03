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
