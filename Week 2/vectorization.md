## Notes on Vectorization

![vectorization](https://github.com/zee-nguyen/Stanford_Machine_Learning/blob/master/assets/vectorization.png?raw=true)

### Unvectorized implementation

**Pseudocode:**

```
prediction = 0.0;
for j = 1:n+1:  // MathLab is 1-indexed
        prediction = prediction + theta(j) * x(j)
end;
```

### Vectorized implementation

- More efficient

**Pseudocode:**

```
prediction = theta' * x;
```
