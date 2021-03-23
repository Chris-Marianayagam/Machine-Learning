function [J, grad] = TestcostFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%J = 0;
%grad = zeros(size(theta));
z = X*theta
h = sigmoid(z)
length_theta = length(theta)
modifiedtheta = theta(2:length_theta,:)
RegularizedJ= (lambda/(2*m))*(modifiedtheta'*modifiedtheta)
%RegularizedJ = (lambda/(2*m))*(theta'*theta)
%J = (lambda/2*m)*(theta'*theta)
J =(1/m)*(-y'*log(h)-(1-y)'*log(1-h))
%J =(1/m)*(-y'*log(h)-(1-y)'*log(1-h))+RegularizedJ
%J = RegularizedJ
%
theta(1) = 0
grad = (1/m)*X'*(h-y) + (lambda/m)*theta
%grad(1) = grad(1) - (1/m)*(X(:,1))'*(y-h)
%grad(2) = grad(2) - (1/m)*(X(:,2))'*(y-h)
%grad(3) = grad(3) - (1/m)*(X(:,3))'*(y-h)
%grad(1) = grad(1) - (1/m)*(X(:,1))'*(h-y)
%grad(2) = grad(2) - (1/m)*(X(:,2))'*(h-y)
%grad(3) = grad(3) - (1/m)*(X(:,3))'*(h-y)
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
% =============================================================
theta
grad
end
% =============================================================

