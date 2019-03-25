%5.1 Computer Exercise 5a
syms x
n1 = 100;
a1 = 0;
b1 = 100;
h1 = (b1-a1)/n1;

f1(x) = exp(-x^2);

sum1 = double((1/2)*(f1(a1)+f1(b1)));

for i=1 : n1-1
    xn1 = double(a1+i*h1);
    sum1 = double(sum1+f1(xn1));
end

sum1 = sum1*(h1)
actu1 = sqrt((pi))/2;
diff1 = abs(actu1-sum1)

%Now using the change of variables (x = -ln(t))
n2 = 100;
a2 = 1;
b2 = exp(-100);
h2 = (b2-a2)/n2;

f2(x) = -exp(-log(x)^2)/x;

sum2 = double((1/2)*(f2(a2)+f2(b2)));

for i=1 : n2-1
    xn2 = double(a2+i*h2);
    sum2 = double(sum2+f2(xn2));
end

sum2 = sum2*(h2)
actu2 = sqrt((pi))/2;
diff2 = abs(actu2-sum2)