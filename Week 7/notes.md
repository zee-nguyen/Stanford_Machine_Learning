# SVM in practice

- Use SVM software package (eg. `liblibear`, `libsvm`, ...) to solve for parameters θ.
- But we need to specify:
    - Choice of parameter C
    - Choice of kernel (similarity function)

## Kernel
1. No kernel ("linear kernel")
  - Predict "y=1" if θ' * x >= 0
  - Use when: n (# of features) is large, m (# of training set) is small

2. Gaussian kernel
  - Need to choose σ^2
    - large σ^2: high bias, low variance
    - small σ^2: low bias, high variance
  - Good when n is small, m is large
  - **Need to perform feature scaling before using the Gaussian kernel** to reduce the effect of some features that have large ranges

## Multi-class Classification

- Many SVM packages already have built-in multi-class classification functionality
- Otherwise, use one-vs-all method:
    - Train K SVMs, one to distinguish y = i from the rest, for i = 1, 2, ..., K
    - Get θ(1), θ(2),..., θ(K)
    - Pick class i with largest θ(i)-transposed * x

## Logistic Regression vs. SVMs

- n = # of features
- m = # of training examples

1. **If n is large (relative to m)** – for example, spam classification problem with n = 10,000 features and m = 10 to 10,000 examples (or  Text Classification, as each alphabet is a new feature)

- Use logistic regression, or SVM without a kernel ("linear kernel")
- **Why?**: if we have so many features with smaller training sets, a linear function will probably do fine + we don't really have enough data to fit a very complicated nonlinear function.

2. **If n is small and m is intermediate** – for ex, n is up to 1000 and m ~ 10 to 50,000
- SVM with Gaussian kernel

3. **If n is small, m is large** (n=1-1000, m=50,000+)
- Create/add more features, then use logistic regression or SVM without a kernel

**Note** Neural network likely to work well for most of these settings, but may be slower to train.
