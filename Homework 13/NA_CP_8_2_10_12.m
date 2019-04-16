%8.2 Computer Exercise 10
format compact

%Part (a)
a = [1,1;0,1;1,0]
[U,D,V] = svd(a)
check = U*D*transpose(V)

%Part (b)
a1 = [1,3,-2;2,7,5;-2,-3,4;5,-3,-2]
[U1,D1,V1] = svd(a1)
check1 = U1*D1*transpose(V1)

%%
%8.2 Computer Exercise 12

%Part (a)
a2 = [2,1,-2]
[U2,D2,V2] = svd(a2)
check2 = U2*D2*transpose(V2)

%Part (b)
a3 = [3,4]
[U3,D3,V3] = svd(a3)
check3 = U3*D3*transpose(V3)

%Part (c)
a4 = [-5/2 + 3*sqrt(3),(5/2)*sqrt(3)+3]
[U4,D4,V4] = svd(a4)
check4 = U4*D4*transpose(V4)