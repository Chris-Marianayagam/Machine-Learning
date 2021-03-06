function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)
% Given Theta1 25 x 401 and Theta2 10x26
% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
%num_labels =10

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
a_1 = [ones(m,1) X]
%a_1 5000x401 5000 input training images containing 400 + 1 features(pixels)
z2 = a_1*Theta1'
% z2 = 5000 x 25
a_2 =sigmoid(z2)
% a_2 5000x25
%
a_2 = [ones(size(a_2,1),1) a_2]
%a_2 5000x26
%
z3 = a_2*Theta2'
%z3 5000 x10
a_3 = sigmoid(z3)
%a_3 5000 x 10
%
[maxvalue, p] = max(a_3, [] , 2);
% =========================================================================
end
