## Non-linear Hypotheses

Suppose you are learning to recognize cars from 100×100 pixel images (grayscale, not RGB). Let the features be pixel intensity values. If you train logistic regression including all the quadratic terms (xi,xj) as features, about how many features will you have?

- [ ] 5,000
- [ ] 100,000
- [X] 50 million (5 x 10^7)
- [ ] 5 billion (5 x 10^9)

**Explanation**: Take a smaller example, 1x2 sample of pixels, we have 3 groups:

1. x1, x2
2. x1^2, x2^2
3. x1 * x2, x2 * x1

Total features = size of G1 + size of G2 + size of G3

But group 3 has duplicates, as the 2 terms in group 3 are the same. We need to account for this duplication, i.e. we only want to count **unique** pairwise products in the matrix. Using binomial coefficient, we can count size of G3 as C(m x n, 2) in which m x n is the dimension of our matrix.

Hence, given the dimension above, total features = 100 * 100 + 100 * 100 + C(100 * 100, 2) = 5,001,5000


---

### Multiclass Classification

Suppose you have a multi-class classification problem with 10 classes. Your neural network has 3 layers, and the hidden layer (layer 2) has 5 units. Using the one-vs-all method described here, how many elements does Θ(2) have?

- [ ] 50
- [ ] 55
- [X] 60
- [ ] 65

**Explanation**: The output layer has 10 units, so each of the unit in layer 2 will have 10 weights. Since we have 5 units + 1 bias unit, the total element of Θ(2) is 60.
