%3.1 Computer Exercise 3
%Find a root of the equaion tan(x)=x, on the interval [4,5] by using
%bisection. What happens on interval [1,2].
syms x

f(x) = tan(x)-x;

a = 4;
b = 5;
g = zeros(1,30);
k = zeros(1,30);
%Bisection Method
for i = 1:30
    c = (a+b)/2;
    g(i) = (a+b)/2;
    k(i) = f(c);
    if f(c) == 0
        break
    elseif f(c) > 0
        b = c;
    elseif f(c) < 0
        a = c;
    end
end

y = transpose(double([g;k]));
%Prints out values where the first column is c, and second f(c).

a1 = 1;
b1 = 2;
g1 = zeros(1,30);
k1 = zeros(1,30);
%Bisection method
for i = 1:30
    c1 = (a1+b1)/2;
    g1(i) = (a1+b1)/2;
    k1(i) = f(c1);
    if f(c1) == 0
        break
    elseif f(c1) > 0
        b1 = c1;
    elseif f(c1) < 0
        a1 = c1;
    end
end

y1 = transpose(double([g1;k1]));
%Results for [1,2]