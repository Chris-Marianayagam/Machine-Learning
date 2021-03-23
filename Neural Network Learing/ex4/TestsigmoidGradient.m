function g = sigmoidGradient(z = [ 0 -1 -0.5 0.5 1])
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.
%output_precision(6)
g = zeros(size(z));
%g = sigmoid(z).*(1-sigmoid(z));
g = 1.0 ./ (1.0 + exp(-z));
g = g.* (1 -g);
%disp(sprintf('% 0.6f', g))
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).
% =============================================================
end