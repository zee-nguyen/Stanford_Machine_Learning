# Machine Learning System Design

## 1

You are working on a spam classification system using regularized logistic regression. "Spam" is a positive class (y = 1) and "not spam" is the negative class (y = 0). You have trained your classifier and there are m = 1000 examples in the cross-validation set. The chart of predicted class vs. actual class is:

|        | Actual Class: 1           | Actual Class: 0  |
| ------------- |:-------------:| -----:|
| Predicted Class: 1      | 85 | 890 |
| Predicted Class: 0     | 15      |   10 |


- Accuracy = (true positives + true negatives) / (total examples) = .095
- Precision = (true positives) / (true positives + false positives) = 0.087
- Recall = (true positives) / (true positives + false negatives) = 0.85
- F1 score = (2 * precision * recall) / (precision + recall) = 0.16

## 2

Suppose a massive dataset is available for training a learning algorithm. Training on a lot of data is likely to give good performance when two of the following conditions hold true. Which are the two?

- [X] A human expert on the application domain can confidently predict y when given only the features x (or more generally we have some way to be confident that x contains sufficient information to predict y accuratly)

> It is important that the features contain sufficient information, as otherwise no amount of data can solve a learning problem in which the features do not contain enough information to make an accurate prediction.

- [ ] The classes are not too skewed.
- [ ] When we are willing to include high order polynomial features of x
- [X] Our learning algorithm is able to represent fairly complex functions (for example, if we train a neural network or other model with a large number of parameters).

> You should use a complex, "low bias" algorithm, as it will be able to make use of the large dataset provided. If the model is too simple, it will underfit the large training set.

## 3

Suppose you have trained a logistic regression classifier which is outputing hθ(x).
Currently, you predict 1 if hθ(x)≥ threshold, and predict 0 if hθ(x)<threshold, where currently the threshold is set to 0.5.

Suppose you increase the threshold to 0.9. Which of thefollowing are true? Check all that apply.

- [ ] The classifier is likely to have unchanged precision and recall, but higher accuracy.
- [ ] The classifier is likely to now have higher recall.
- [X] The classifier is likely to now have higher precision.

> Increasing the threshold means more y = 0 predictions. This will decrease both true and false positives, so precision will increase (and recall decreases).

- [ ] The classifier is likely to have unchanged precision and recall, but thus the same F1 score.

> precision and recall will certainly change. We cannot say whether the F1 score will increase or decrease.

## 4

Suppose you are working on a spam classifier, where spam emails are positive examples (y=1) and non-spam emails are negative examples (y=0). You have a training set of emails in which 99% of the emails are non-spam and the other 1% is spam. Which of the following statements are true? Check all that apply.

- [X] If you always predict non-spam (output y = 0), your classifier will have 99% accuracy on the training set, and it will likely perform similarly on the cross validation set.

> The classifier achieves 99% accuracy on the training set because of how skewed the classes are. We can expect that the cross-validation set will be skewed in the same fashion, so the classifier will have approximately the same accuracy.

- [X] A good classifier should have both a high precision and high recall on the cross validation set.

> For data with skewed classes like these spam data, we want to achieve a high F1 score, which requires high precision and high recall.

- [ ] If you always predict non-spam (output y = 0), your classifier will have 99% accuracy on the training set, but it will do much worse on the cross validation set because it has overfit the training data.

- [X] If you always predict non-spam (output y=0), your classifier will have an accuracy of 99%.

> Since 99% of the examples are y = 0, always predicting 0 gives an accuracy of 99%. Note, however, that this is not a good spam system, as you will never catch any spam.

## 5

Which of the following statements are true? Check all that apply.

- [ ] After training a logistic regression classifier, you **must(()) use 0.5 as your threshold for predicting whether an example is positive or negative.
- [ ] It is a good idea to spend a lot of time collecting a **large(()) amount of data before building your first version of a learning algorithm.
- [X] On skewed datasets (e.g., when there are more positive examples than negative examples), accuracy is not a good measure of performance and you should instead use F1 score based on the precision and recall.

> You can always achieve high accuracy on skewed datasets by predicting the most the same output (the most common one) for every input. Thus the F1 score is a better way to measure performance.

- [X] Using a very large training set makes it unlikely for model to overfit the training data

> A sufficiently large training set will not be overfit, as the model cannot overfit some of the examples without doing poorly on the others.

- [ ] If your model is underfitting the training set, then obtaining more data is likely to help.
