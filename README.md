## matlab_funcs

Useful/improved matlab functions.


# Distance Functions
mypdist, mypdist2 compute the squared euclidean distance between vectors.

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

# Installation
To install simply copy the files into your matlab path.

You can download the repository as a ZIP or using the command 

`git clone https://github.com/maksimt/matlab_funcs`
