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

---

# Applications

## Examples and Intuition

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/f_ueJLGnEea3qApInhZCFg_a5ff8edc62c9a09900eae075e8502e34_Screenshot-2016-11-23-10.03.48.png?expiry=1586736000000&hmac=5B-fBhxkT7D9k1c1g0R_Q0MrUQeGwyKlXOCGKDSlktU)

g(z)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/wMOiMrGnEeajLxLfjQiSjg_bbbdad80f5c95068bde7c9134babdd77_Screenshot-2016-11-23-10.07.24.png?expiry=1586736000000&hmac=PJ04cib9NgFq0iGMUAgsKBdFG9br5YAsMu3Q0O3WVEo)

---

## Multiclass Classification

To classify data into multiple classes, we let our hypothesis function return a vector of values. Say we wanted to classify our data into one of four categories. We will use the following example to see how this classification is done. This algorithm takes as input an image and classifies it accordingly:

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/9Aeo6bGtEea4MxKdJPaTxA_4febc7ec9ac9dd0e4309bd1778171d36_Screenshot-2016-11-23-10.49.05.png?expiry=1586736000000&hmac=3rWvaxnolqSK8dY6j1DnGBB_W4j3TMiVVxuypRnHI4I)

We can define our set of resulting classes as y:

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/KBpHLXqiEealOA67wFuqoQ_95654ff11df1261d935ab00553d724e5_Screenshot-2016-09-14-10.38.27.png?expiry=1586736000000&hmac=KOerwkbvWHdD0tBI1FoNFMZZSaRZUTZBBZhr-1-CZCo)

Each y (i) represents a different image corresponding to either a car, pedestrian, truck, or motorcycle. The inner layers, each provide us with some new information which leads to our final hypothesis function. The setup looks like:

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/VBxpV7GvEeamBAoLccicqA_3e7f67888330b131426ecffd27936f61_Screenshot-2016-11-23-10.59.19.png?expiry=1586736000000&hmac=2Th63LDilsYhyJMc3HiQn1cs1xxnDNQ25g3DqR03hz4)

The resulting hypothesis for one set of inputs may look like [0 0 1 0], which represents a motorcycle.

----

### Why do we need to provide the cost function and the derivative?

- Cost function is to use in forward-propagate (performing this by directly applying the cost function)

- Derivative of the cost function is to use in back-propagate.

Ref: https://medium.com/datathings/neural-networks-and-backpropagation-explained-in-a-simple-way-f540a3611f5e
