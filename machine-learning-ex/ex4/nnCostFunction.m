function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices.
%
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

% First, need to prep the result vectors y
eye_matrix = eye(num_labels);
y_matrix = eye_matrix(y, :);

% Add bias unit to input layer
X = [ones(m, 1) X];

% Start feeding forward
z2 = X * Theta1';
a2 = sigmoid(z2);

a2 = [ones(m, 1) a2];
z3 = a2 * Theta2';

htheta = sigmoid(z3);

% cost function without regularized term - vectorized implementation
J = (1/m) * sum( sum( (-y_matrix) .* log(htheta) - (1 - y_matrix) .* log(1 - htheta) ) );

% now, calculate regularized term, similar to w3
% same as before - skipped theta 0
% below: newTheta1 is a copy of Theta1, all rows, columns from 2 to end
newTheta1 = Theta1(:, 2:end);
newTheta2 = Theta2(:, 2:end);

% use the regularization formula described on page 6 of ex4.
regTerm = (lambda/(2*m)) * ( sum(sum(newTheta1 .^ 2)) + sum(sum(newTheta2 .^ 2)) );

J = J + regTerm;

% =======================================================================
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the
%               first time.

% Iterative through each training example, forward pass then use that
% result and corresponding y to calculate error
for t = 1:m
    x_t = X(t,:); % we're not adding bias unit here cuz we already updated X above
    y_t = y_matrix(t,:); % corresponding output

    % forward prop
    z2 = x_t * Theta1';
    a2 = sigmoid(z2);

    % add bias unit
    a2 = [1, a2];

    z3 = a2 * Theta2';
    a3 = sigmoid(z3);

    % Now we have the last activation layer, we're gonna go backwards to
    % compute delta
    d3 = a3 - y_t;

    % temp hidden layer error
    hid_err = Theta2' * d3';

    % skip bias unit
    d2 = hid_err(2:end,:)' .* sigmoidGradient(z2);

    Theta2_grad = Theta2_grad + d3' * a2;
    Theta1_grad = Theta1_grad + d2' * x_t;
end

% divide everything (element-wise) by m to return the partial derivatives.
% Theta2_grad = Theta2_grad ./ m;
% Theta1_grad = Theta1_grad ./ m;

% =======================================================================
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

% Formula provided in ex4.mlx -- 2.5 Regularized neural networks

% Two cases, l = 0 and l > 0
% l = 0
Theta1_grad(:,1) = 1/m .* Theta1_grad(:,1);
Theta2_grad(:,1) = 1/m .* Theta2_grad(:,1);

% l > 0
Theta1_grad(:,2:end) = (1/m .* Theta1_grad(:,2:end)) + ( (lambda/m) * Theta1(:, 2:end) );
Theta2_grad(:,2:end) = (1/m .* Theta2_grad(:,2:end)) + ( (lambda/m) * Theta2(:, 2:end) );



% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
