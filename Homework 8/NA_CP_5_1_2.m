%5.1 Computer Exercise 2
syms x 

%Part "a" for CP 5.1 Ex 2
n1 = 60;
a1 =0;
b1 = pi;
h1 = (b1-a1)/n1;

f1(x) = sin(x);

sum1 = double((1/2)*(f1(a1)+f1(b1)));

for i=1 : n1-1
    xn1 = double(a1+i*h1);
    sum1 = double(sum1+f1(xn1));
end

sum1 = sum1*(h1)
actu1 = 2;
diff1 = abs(actu1-sum1)

%Part "b" for CP5.1 Ex 2
n2 = 60;
a2 =0;
b2 = 1;
h2 = (b2-a2)/n2;

f2(x) = exp(x);

sum2 = double((1/2)*(f2(a2)+f2(b2)));

for i=1 : n2-1
    xn2 = double(a2+i*h2);
    sum2 = double(sum2+f2(xn2));
end

sum2 = sum2*(h2)
actu2 = exp(1)-1;
diff2 = abs(actu2-sum2)