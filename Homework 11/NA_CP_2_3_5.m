%2.3 Computer Exercise 5
format compact

n = 100;
for j = 1:n-2
    a(j) = 1;
    d(j+1) = -4;
    c(j+1) = 1;
    b(j+1) = 40;
end
b(1) = -20;
b(n) = -20;
c(1) = -1;
d(1) = 4;
a(n-1) = -1;
d(n) = 4;

c;
d;
a;

for i = 2:n
    xmult = a(i-1)/d(i-1);
    d(i) = d(i)-(xmult)*c(i-1);
    b(i) = b(i)-(xmult)*b(i-1);
end

x(n)=b(n)/(d(n));
for i = n-1:-1:1
    x(i) = (b(i)-c(i)*x(i+1))/d(i);
end
x