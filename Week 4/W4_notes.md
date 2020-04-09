# Neural Network

## Model Representation

![](https://miro.medium.com/max/1000/1*3fA77_mLNiJTSgZFhYnU0Q.png)

The Neural Network is constructed from 3 type of layers:

- Input layer — initial data for the neural network. usually are noted as vector X

- Hidden layers — intermediate layer between input and output layer and place where all the computation is done. These circles represent the “activation” nodes and usually are noted as W (weights) or θ.

- Output layer — produce the result for given inputs (or the predicted value).

Each node is connected with each node from the next layer and each connection (black arrow) has particular weight. Weight can be seen as impact that that node has on the node from the next layer.

![](https://miro.medium.com/max/1174/1*uz3wd5YeVYlU2JR8rE9VDA.png)

(x0 is 1, called "bias node")

---

## Model Representation Mathematics

![](https://miro.medium.com/max/1400/1*pR6bSQXgC1Y_lYTeLDqVqg.png)

-  “bias” nodes as x₀ and a₀ respectively

- the input nodes can be placed in one vector X and the nodes from the hidden layer in vector A.

![](https://miro.medium.com/max/928/1*GkER6dYs0kF42MZRXscDXA.png)

> If network has a units in layer j and b​ units in layer j+1, then θⱼ will be of dimension b​×(a+1).

![](https://miro.medium.com/max/612/1*-KhURrO42dMXj7aP_VtF9Q.png)

To compute the “activation” nodes for the hidden layer, we need to multiply the input vector X and weights matrix θ¹ for the first layer (X*θ¹)and then apply the activation function g.

![](https://miro.medium.com/max/776/1*gq00mlIXFaCZ8h0MZ8D9Sg.png)

And by multiplying hidden layer vector with weights matrix θ for the second layer(A*θ) we get output for the hypothesis function:

![](https://miro.medium.com/max/1024/1*iQJVglZqVZ6A2er1tNRf0w.png)



Ref: https://towardsdatascience.com/everything-you-need-to-know-about-neural-networks-and-backpropagation-machine-learning-made-easy-e5285bc2be3a
