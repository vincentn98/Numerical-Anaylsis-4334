%8.2 Computer Exercise 13
format compact

%The given matrix B
B = [-149,-50,-154;537,180,546;-27,-9,-25];

%Computing the eigenvalues of matrix B.
[V,D] = eig(B)
disp('The eigenvalues of matrix B are 1,2,3')

%Computing the singular values of matrix B.
[U,D,V] = svd(B)
disp('The singular values of matrix B are 817.7597, 2.4750, 0.0030.')

%Computing the condition number of matrix B.
disp('The condition number of matrix B is')
c = cond(B)
