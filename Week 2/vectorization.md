## Notes on Vectorization

![vectorization](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/vectorization.png?raw=true)

### Unvectorized implementation

**Pseudocode:**

```
prediction = 0.0;
for j = 1:n+1:  // MathLab is 1-indexed
        prediction = prediction + theta(j) * x(j)
end;
```

### Vectorized implementation

- More efficient

**Pseudocode:**

```
prediction = theta' * x;
```

---

## Helpful explanation of the math

If you are wondering how the seemingly complex looking for loop can be vectorized and cramped into a single one line expression, then please read on. The vectorized form is:

```
theta = theta - (alpha/m) * (X' * (X * theta - y))
```

Given below is a detailed explanation for how we arrive at this vectorized expression using gradient descent algorithm:

This is the gradient descent algorithm to fine tune the value of θ:

![vectorization](https://i.stack.imgur.com/kFsJC.png)

Assume that the following values of X, y and θ are given:

- m = number of training examples
- n = number of features + 1
enter image description here

![X, y, theta](https://i.stack.imgur.com/Cdilc.png)

Here:

- m = 5 (training examples)
- n = 4 (features+1)
- X = m x n matrix
- y = m x 1 vector matrix
- θ = n x 1 vector matrix
- xi is the ith training example
- xj is the jth feature in a given training example

Further,

- `h(x) = ([X] * [θ])` (m x 1 matrix of predicted values for our training set)
- `h(x)-y = ([X] * [θ] - [y])` (m x 1 matrix of Errors in our predictions)
whole objective of machine learning is to minimize Errors in predictions. Based on the above corollary, our Errors matrix is m x 1 vector matrix as follows:

![](https://i.stack.imgur.com/W8ath.png)

**To calculate new value of θj, we have to get a summation of all errors (m rows) multiplied by jth feature value of the training set X**. That is, take all the values in E, individually multiply them with jth feature of the **corresponding** training example, and add them all together. This will help us in getting the new (and hopefully better) value of θj. Repeat this process for all j or the number of features. In matrix form, this can be written as:

![](https://i.stack.imgur.com/hqhDl.png)

This can be simplified as:

![](https://i.stack.imgur.com/TZ96A.png)

- `[E]' x [X]` will give us a row vector matrix, since E' is 1 x m matrix and X is m x n matrix. But we are interested in getting a column matrix, hence we transpose the resultant matrix.
More succinctly, it can be written as:

![](https://i.stack.imgur.com/pzwQL.png)

Since `(A * B)' = (B' * A')`, and `A'' = A`, we can also write the above as

![](https://i.stack.imgur.com/z0xA3.png)

This is the original expression we started out with:

```
theta = theta - (alpha/m) * (X' * (X * theta - y))
```
