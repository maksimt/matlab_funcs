function [ D ] = mypdist2( X,Y )
%PDIST2 computes the squared euclidean distance between rows of X and rows
%of Y
%input:
% X - n*d n rows in d dimensions
% Y - m*d m rows in d dimensions
%output:
% D - n*m D_ij = norm(X(i,:)-Y(j,:))^2

[n,dx] = size(X);
[m,dy] = size(Y);
assert(dx==dy,'X and Y must have same column dimension');
nx = dot(X,X,2);
ny = dot(Y,Y,2);
Nx = repmat(nx,1,m);
Ny = repmat(ny,1,n);
D = Nx + Ny' - 2*X*Y';

end

