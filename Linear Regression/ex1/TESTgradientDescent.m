function theta
m = 3
theta = zeros(2,1);
alpha = 0.01;
X = [1 2; 1 5; 1 7];
yy = [400, 1300, 1500];
y = yy'
for iter = 1:1500
theta
for i = 1:m
theta(1) = theta(1)-(alpha/m)*sum(X(i,:)*theta-y(i)).*X(i,1)
theta(2) = theta(2)-(alpha/m)*sum(X(i,:)*theta-y(i)).*X(i,2)
%thetafirst = [theta(1), theta(2)]
%theta = thetafirst'
end
end
