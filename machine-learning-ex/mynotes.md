### Hypothesis function h-theta(x)
```
htheta = X * theta;
```

### To skip theta0
```
theta(2:end);
```

### Sum of squared errors

```
sum((htheta - y) .^ 2) is equivalent to (htheta - y)' * (htheta - y)
```

### Regulargized gradient descend

```
grad = (1/m) * (X' * (htheta - y)) + (lambda/m) * newTheta';
```

### Select training set, cross validation set sizes

For a training set size of i, you should use the first i examples

```
X(1:i,:)
y(1:i)
```
