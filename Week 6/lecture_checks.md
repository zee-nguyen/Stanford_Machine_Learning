Which of the following statements about diagnostics are true? Check all that apply.

- [ ] It’s hard to tell what will work to improve a learning algorithm, so the best approach is to go with gut feeling and just see what works.
- [X] Diagnostics can give guidance as to what might be more fruitful things to try to improve a learning algorithm.
- [X] Diagnostics can be time-consuming to implement and try, but they can still be a very good use of your time.
- [X] A diagnostic can sometimes rule out certain courses of action (changes to your learning algorithm) as being unlikely to improve its performance significantly.

---

Suppose you fit a neural network with one hidden layer to a training set. You find that the cross validation error J-CV(θ) is much larger than the training error J-train(θ). Is increasing the number of hidden units likely to help?

- [ ] Yes, because this increases the number of parameters and lets the network represent more complex functions.
- [ ] Yes, because it is currently suffering from high bias.
- [ ] No, because it is currently suffering from high bias, so adding hidden units is unlikely to help.
- [X] No, because it is currently suffering from high variance, so adding hidden units is unlikely to help.

---

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W6-lecturechecks-2.png?raw=true)

---

![](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/W6-lecturechecks-3.png?raw=true)

---

Which of the following statements do you agree with? Check all that apply.

- [X] For some learning applications, it is possible to imagine coming up with many different features (e.g. email body features, email routing features, etc.). But it can be hard to guess in advance which features will be the most helpful.
- [ ] For spam classification, algorithms to detect and correct deliberate misspellings will make a significant improvement in accuracy.
- [ ] Because spam classification uses very high dimensional feature vectors (e.g. n = 50,000 if the features capture the presence or absence of 50,000 different words), a significant effort to collect a massive training set will always be a good idea.
- [X] There are often many possible ideas for how to develop a high accuracy learning system; “gut feeling” is not a recommended way to choose among the alternatives.

---

Why is the recommended approach to perform error analysis using the cross validation data used to compute J-CV(θ) rather than the test data used to compute J-test(θ)?

- [ ] The cross validation data set is usually large.
- [ ] This process will give a lower error on the test set.
- [X] If we develop new features by examining the test set, then we may end up choosing features that work well specifically for the test set, so Jtest(θ) is no longer a good estimate of how well we generalize to new examples.
- [ ] Doing so is less likely to lead to choosing an excessive number of features.

---

Having a large training set can help significantly improve a learning algorithm’s performance. However, the large training set is unlikely to help when:

- [X] The features x do not contain enough information to predict y accurately (such as predicting a house’s price from only its size), and we are using a simple learning algorithm such as logistic regression.
- [ ] We are using a learning algorithm with a large number of features (i.e. one with “low bias”).
- [X] The features x do not contain enough information to predict y accurately (such as predicting a house’s price from only its size), even if we are using a neural network with a large number of hidden units.
- [ ] We are not using regularization (e.g. the regularization parameter λ = 0).
