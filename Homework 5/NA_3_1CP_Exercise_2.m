%3.1 Computer Exercise 2
%We find the root on the interval [0,1] by using the bisection method on
%9x^4+18x^3+38x^2-57x+14
syms x

f(x) = 9*x^4+18*x^3+38*x^2-57*x+14;

a = 0;
b = 1;
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
    else
        a = c;
    end
end

y = transpose(double([g;k]));
%Prints out values where the first column is c, and second f(c).