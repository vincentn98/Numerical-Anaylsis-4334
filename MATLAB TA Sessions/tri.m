n = 50;
d = 5*ones(n,1);
a = -1*ones(n-1,1);
c = -1*ones(n-1,1);

for i = 2:n
    xmult = a(i-1)/(d-1);
    d(i) = d(i)-xmult*c(i-1);
end

for i = 2:n
    b(i) = b(i)-xmult*b(i-1);
end

x(n) = b(n)/d(n);
for i = n-1:-1:1
    x(i) = (b(i)-c(i)*x(i+1))/d(i);
end