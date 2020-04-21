## Troubleshooting errors in our predictions

 - Getting more data (training examples)
 - Trying smaller sets of features
 - Trying additional features
 - Trying polynomial features
 - Increasing/decreasing lambda λ

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
