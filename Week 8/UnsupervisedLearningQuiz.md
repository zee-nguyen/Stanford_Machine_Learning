# Machine Learning Week 8 Quiz 1 - Unsupervised Learning

### 1
For which of the following tasks might K-means clustering be a suitable algorithm? Select all that apply.

- [X] From the user usage patterns on a website, figure out what different groups of users exist.
> We can cluster the users with K-means to find different, distinct groups.
- [ ] Given many emails, you want to determine if they are Spam or Non-Spam emails.
- [X] Given a set of news articles from many different news websites, find out what are the main topics covered.
> K-means can cluster the articles and then we can inspect them or use other methods to infer what topic each cluster represents
- [ ]  Given historical weather records, predict if tomorrow's weather will be sunny or rainy.

### 2
uppose we have three cluster centroids μ1=[1 2], μ2=[−3 0] and μ3=[4 2]. Furthermore, we have a training example x(i)=[−2 1]. After a cluster assignment step, what will c(i) be?

- [ ] c(i) = 3
- [X] c(i) = 2
- [ ] c(i) = 1
- [ ] c(i) is not assigned

### 3
K-means is an iterative algorithm, and two of the following steps are repeatedly carried out in its inner-loop. Which two?

- [ ] Test on the cross-validation set.
- [ ] Randomly initialize the cluster centroids.
- [X] Move the cluster centroids, where the centroids μ-k are updated.
- [X] The cluster assignment step, where the parameters c(i) are updated.


### 4
Suppose you have an unlabeled dataset {x1...xm}. You run K-means with 50 different random initializations, and obtain 50 different clusterings of the data. What is the recommended way for choosing which one of these 50 clusterings to use?

- [X] For each of the clusterings, compute the J distortion function, and pick the one that minimizes this.
> This function is the distortion function. Since a lower value for the distortion function implies a better clustering, you should choose the clustering with the smallest value for the distortion function.
- [ ] Always pick the final (50th) clustering found, since by that time it is more likely to have converged to a good solution.
- [ ] The only way to do so is if we also have labels y(i) for our data.
- [ ] The answer is ambiguous, and there is no good way of choosing.

### 5

Which of the following statements are true? Select all that apply.

- [X] A good way to initialize K-means is to select K (distinct) examples from the training set and set the cluster centroids equal to these selected examples.
- [ ] K-Means will always give the same results regardless of the initialization of the centroids.
- [ ] Once an example has been assigned to a particular centroid, it will never be reassigned to another different centroid
- [X] On every iteration of K-means, the cost function J (the distortion function) should either stay the same or decrease; in particular, it should not increase.
> Both the cluster assignment and cluster update steps decrese the cost / distortion function, so it should never increase after an iteration of K-means.
