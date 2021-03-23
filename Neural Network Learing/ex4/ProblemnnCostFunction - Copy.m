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

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight 
%matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2=reshape(nn_params((1+(hidden_layer_size*(input_layer_size +1))):end),...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
%load('ex4data1.mat');
m = size(X, 1);
%disp(m)
%disp(X(5,:)
%
%m = size(X, 1);
%num_labels = size(Theta2, 1);
%num_labels =10

% You need to return the following variables correctly 
%p = zeros(size(X, 1), 1);
         
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
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives
% of
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
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%
%num_labels =10
%m=15
%y =[1 2 3 5 8 6 4 2 9 6 3 2 1 5 10]
  
  aa = eye(num_labels);
%Y = zeros(20, num_labels);
Y = zeros(m, num_labels);
%for i=4980:5000,
for i=1:m,
%  for j = num_labels
%y(i)
%  aa(y(i), :)
%  Y(i,:)
%  Y(i, j)= aa(y(i), j)
Y(i, :)= aa(y(i), :);
%Y(i,:)
endfor
%end;
%
a_1 = [ones(m,1) X];
%disp(a_1)
%a_1 5000x401 5000 input training images containing 400 + 1 features(pixels)
z2 = a_1*Theta1';
% z2 = 5000 x 25
a_2 =sigmoid(z2);
%disp(a_2)
% a_2 5000x25
%
a_2 = [ones(size(a_2,1),1) a_2];
%a_2 5000x26
%
z3 = a_2*Theta2';
%z3 5000 x10
a_3 = sigmoid(z3);
disp(a_3);
h = a_3;
fprintf('\nChecking display h size limit ... \n')
%disp(h)
%h(5,:)
fprintf('\nChecking h size limit ... \n')
%h(4800,:)
%
for a = 1:m
   j = 1:num_labels
 (-Y(a,j)
  h(a,j)
 log(h(a,j))
%    (1-Y(a,j)
%    1-h(a,j)
%    J =J +(-Y(a,j)*log(h(a,j))-(1-Y(a,j)*log(1-h(a,j)))
keyboard
%endfor
endfor
end;

%a_3 5000 x 10
%
%z = X*theta
%h = sigmoid(z)
%length_theta = length(theta)
%modifiedtheta = theta(2:length_theta,:)
%RegularizedJ= (lambda/(2*m))*(modifiedtheta'*modifiedtheta)
%
%J = 0
% for a = 1:m,
a = 4000;
%  for j = 1:num_labels,
%J = J + log(h(a,j)) +Y(a,j)
%J = J + a +j
%J1 =(-Y(a,j)
%fprintf('\nChecking h size limit LOG ... \n')
%log(h(a,j))
%J =J +(-Y(a,j)*log(h(a,j))-(1-Y(a,j)*log(1-h(a,j)))
%J =J +(-Y(a,j)*log(h(a,j))-(1-Y(a,j)*log(1-h(a,j)))
%end
%J = -J/m
%end
%end
%J = -J/m
%J =(1/m)*(-y'*log(h)-(1-y)'*log(1-h))+RegularizedJ
%
%theta(1) = 0
%grad = (1/m)*X'*(h-y) + (lambda/m)*theta
% -------------------------------------------------------------
% =========================================================================
% Unroll gradients
%grad = [Theta1_grad(:) ; Theta2_grad(:)];
%end;