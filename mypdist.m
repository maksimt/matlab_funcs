function [ D ] = mypdist( X )
%MYPDIST computes squared euclidean distance between each row of X
%input:
% X - n*d n vectors in d dimensions
%output:
% D - n*n D_ij = D_ji is norm(X(i,:)-X(j,:))^2

[n,~] = size(X);
nx = dot(X,X,2);
N = repmat(nx,1,n);
D = N+N'-2*(X*X');

end

