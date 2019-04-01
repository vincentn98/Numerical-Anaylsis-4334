%5.4 Computer Exercise 1
syms x

a = 0;
b = 1;

f1(x) = exp(-x^2)

f2(x) = f1((1/2)*((b-a)*x + (b+a)))

Approx = double((1/2)*(b-a)*((5/9)*f2(-sqrt(3/5))+(8/9)*f2(0)+(5/9)*f2(sqrt(3/5))))

%Now testing the code for exactness when x^4
a1 = -1;
b1 = 1;

g1(x) = x^4

g2(x) = g1((1/2)*((b1-a1)*x + (b1+a1)))

Approx1 = double((1/2)*(b1-a1)*((5/9)*g2(-sqrt(3/5))+(8/9)*g2(0)+(5/9)*g2(sqrt(3/5))))