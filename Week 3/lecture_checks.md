# Week 3 Lecture Checks

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W3_Q1.png?raw=true)

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W3_Q2.png?raw=true)

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W3_Q3.png?raw=true)

---

## Vectorize Gradient Descent

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W3_Q4_vectorize-gradient-descent.png?raw=true)

---
## The Problem of Overfitting

Consider the medical diagnosis problem of classifying tumors as malignant or benign. If a hypothesis hθ(x) has overfit the training set, it means that:

- [ ] It makes accurate predictions for examples in the training set and generalizes well to make accurate predictions on new, previously unseen examples.

- [ ] It does not make accurate predictions for examples in the training set, but it does generalize well to make accurate predictions on new, previously unseen examples.

- [X] It makes accurate predictions for examples in the training set, but it does not generalize well to make accurate predictions on new, previously unseen examples.

- [ ] It does not make accurate predictions for examples in the training set and does not generalize well to make accurate predictions on new, previously unseen examples.

---
## Regularization

In regularized linear regression, we choose θ to minimize:

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/regularization-logistic-regression.png?raw=true)

What if λ is set to an extremely large value (perhaps too large for our problem, say λ=10^10)?

- [ ] Algorithm works fine; setting λ to be very large can't hurt it.

- [ ] Algorithm fails to eliminate overfitting.

- [X] Algorithm results in underfitting (fails to fit even the training set).

- [ ] Gradient descent will fail to converge.

---

## Regularized Logistic Regression

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W3_Q5.png?raw=true)
