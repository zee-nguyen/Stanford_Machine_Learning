## 2

Suppose you have implemented regularized logistic regression to classify what object is in an image (i.e., to do object recognition). However, when you test your hypothesis on a new set of images, you find that it makes unacceptably large errors with its predictions on the new images. However, your hypothesis performs well (has low error) on the training set. Which of the following are promising steps to take? Check all that apply.

- [ ] Use fewer training examples.
- [X] Try using a smaller set of features.
- [X] Get more training examples.
- [ ] Try adding polynomial features.

## 3

Suppose you have implemented regularized logistic regression to predict what items customers will purchase on a web shopping site. However, when you test your hypothesis on a new set of customers, you find that it makes unacceptably large errors in its predictions. Furthermore, the hypothesis performs **poorly** on the training set. Which of the following might be promising steps to take? Check all that apply.

- [ ] Try evaluating the hypothesis on a cross validation set rather than the test set.
- [X] Try adding polynomial features.
- [X] Try decreasing the regularization parameter λ
- [ ] Use fewer training examples.

**Explanation**: The hypothesis performs poorly on the training set signals high bias, so adding polynomial features helps fitting the training data better. Another possibility is if λ is high, meaning we're punishing some features heavily, leading to high bias. So decreasing λ might help. With a model that suffers high bias, use fewer training examples or evaluating the hypothesis on a cross validation set rather than the test set won't help.

## 4

Which of the following statements are true? Check all that apply.

- [X] Suppose you are training a regularized linear regression model. The recommended way to choose what value of regularization parameter λ to use is to choose the value of λ which gives the lowest **cross validation** error.
- [ ] Suppose you are training a regularized linear regression model. The recommended way to choose what value of regularization parameter λ to use is to choose the value of λ which gives the lowest test set error.
- [X] The performance of a learning algorithm on the training set will typically be better than its performance on the test set.
- [ ] Suppose you are training a regularized linear regression model.The recommended way to choose what value of regularization parameter λ to use is to choose the value of λ which gives the lowest training set error.

## 5

Which of the following statements are true? Check all that apply.

- [X] If a learning algorithm is suffering from high bias, only adding more training examples may not improve the test error significantly.
- [ ] If the training and test errors are about the same, adding more features will not help improve the results.
- [X] If a learning algorithm is suffering from high variance, adding more training examples is likely to improve the test error.
- [X] A model with more parameters is more prone to overfitting and typically has higher variance.
