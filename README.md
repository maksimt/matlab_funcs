## matlab_funcs

Useful/improved matlab functions.


# Distance Functions
mypdist, mypdist2 compute the squared Euclidean distance between vectors. Use elementwise `sqrt` to get simple Euclidean.

### Benchmarks (R2016a)
```
X = rand(1e3,1e4);

tic;D=pdist2(X,X,'squaredeuclidean');toc

tic;D2=mypdist2(X,X);toc

norm(D-D2,'fro')
```

outputs

```
Elapsed time is 6.691210 seconds.
Elapsed time is 0.628573 seconds.

ans =

   1.3632e-08
```

Compared to the popular (and much more versatile) [ipdm package](http://www.mathworks.com/matlabcentral/fileexchange/18937-ipdm--inter-point-distance-matrix):
```
tic;D3=ipdm(X);toc
norm(D3.^2-D,'fro')
```
outputs
```
Elapsed time is 39.528794 seconds.
ans =

   1.7721e-10
```

# Installation
To install simply copy the files into your matlab path.

You can download the repository as a ZIP or using the command 

`git clone https://github.com/maksimt/matlab_funcs`
