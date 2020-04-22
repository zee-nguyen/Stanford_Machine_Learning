## Troubleshooting errors in our predictions

 - Getting more data (training examples) --> fixes high variance
 - Trying smaller sets of features --> fixes high variance
 - Trying additional features --> fixes high bias (usually)
 - Trying polynomial features --> fixes high bias
 - Increasing lambda λ --> fixes high variance
 - Decreasing lambda λ --> fixes high bias

## Evaluating a Learning Algorithm

1. Split data into training and test, 70% and 30% respectively. Procedure becomes
 - Learn Θ and minimize J-train(Θ) using the training set
 - Compute error on test set J-test(Θ)

2. Split the data into 60% training data, 20% cross validation data, and 20% test data.
 - Approach: compute the J-train(Θ) on various polynomial degrees
 - Optimize Θ using training set for each polynomial degrees
 - Find the polynomial degree *d* with the least error using the **cross validation set**
 - Estimate the generalization error using the test set with J-test(Θ-d) (Θ-d is Θ from the polynomial with lower error)

## Bias vs. Variance

How to diagnose these 2 things?

1. High bias (underfitting):
 - J-train and J-CV high
 - J-CV is roughly the same as J-train

Why? Because they both are underfitted

2. High variance (overfitting):
 - J-train is low
 - J-CV is much higher than J-train

Why? Since overfitting means we're fitting the training data really well, the error J(train) is low.
But overfitting doesn't generalize well to new data, so J(CV) is higher.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/I4dRkz_pEeeHpAqQsW8qwg_bed7efdd48c13e8f75624c817fb39684_fixed.png?expiry=1587600000000&hmac=BEA493v2b5rOnq1LYgq1u-QAeuAqonxP8W1mceQKOzs)

## Regularization and Bias/Variance

The problem of choosing lambda λ:
- Large λ (λ = 10000 for example) means we're punishing the extra features heavily, which leads to the values of thetas being really low --> h(x) ~= theta-0 --> High bias (underfitting)
- Small λ (λ = 0 for example) means that we're fitting the data set perfectly -- i.e. High variance (overfitting)
- Want: Just right λ

Approach:
1. Create a list of λ (multiple of 2, for ex: i.e. λ ∈ {0,0.01,0.02,0.04,0.08,0.16,0.32,0.64,1.28,2.56,5.12,10.24})
2. Create a set of models with different degrees/any other variants
3. Iterate through the λs and for each λ, go through all the models to learn some Θ (on training data)
4. Compute the cross validation error using the learned Θ (computed with λ) on the J-CV **without regularization or λ = 0**
5. Select the best combo that produces the lowest error on the cross validation set
6. Using the best combo of Θ and λ, apply it on J-test to see if it has a good generalization of the problem.

## Diagnosing Neural Networks

- A neural network with fewer parameters is prone to underfitting. It is also computationally cheaper.
- A large neural network with more parameters is prone to overfitting. It is also computationally expensive. In this case you can use regularization (increase λ) to address the overfitting.

Using a single hidden layer is a good starting default. You can train your neural network on a number of hidden layers using your cross validation set. You can then select the one that performs best.

### Model Complexity Effects

Lower-order polynomials (low model complexity) have high bias and low variance. In this case, the model fits poorly consistently.
Higher-order polynomials (high model complexity) fit the training data extremely well and the test data extremely poorly. These have low bias on the training data, but very high variance.
In reality, we would want to choose a model somewhere in between, that can generalize well but also fits the data reasonably well.
