%5.4 Computer Exercise 2
syms x

a = 0;
b = 1;

f1(x) = 1/(sqrt(x))

f2(x) = f1((1/2)*((b-a)*x + (b+a)))

Approx = double((1/2)*(b-a)*((5/9)*f2(-sqrt(3/5))+(8/9)*f2(0)+(5/9)*f2(sqrt(3/5))))

a1 = 0;
b1 = 2;

g1(x) = exp(-(cos(x))^2)

g2(x) = g1((1/2)*((b1-a1)*x + (b1+a1)))

Approx1 = double((1/2)*(b1-a1)*((5/9)*g2(-sqrt(3/5))+(8/9)*g2(0)+(5/9)*g2(sqrt(3/5))))