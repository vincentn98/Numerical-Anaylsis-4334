%5.1 Computer Exercise 1
syms x

n1 = 60;
a1 = 0;
b1 = 1;
h1 = (b1-a1)/n1;

f1(x) = exp(-x^2);

sum1 = double ((1/2)*(f1(a1)+f1(b1)));

for i=1 : n1-1
    xn1 = double(a1+i*h1);
    sum1 = double(sum1+f1(xn1));
end

sum1 = sum1*(h1)