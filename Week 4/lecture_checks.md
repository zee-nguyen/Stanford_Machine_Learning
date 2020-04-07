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
