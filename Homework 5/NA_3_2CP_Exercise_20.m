%3.2 Paper Exercise 20
syms x

f(x) = 2*x^3-9*x^2+12*x+15;
fp(x) = 6*x^2-18*x+12;

dp = 3; %use 3, 4 or 2
for i = 1:20
    a(i) = dp;
    dn = dp-(f(dp)/fp(dp));
    xv(i) = dn;
    dp = dn;
    c(i) = dn;
    y(i) = f(dn);
end

diff = double(xv-a);
xv = c;
fx = y;

table = transpose(double([xv;fx;diff]));