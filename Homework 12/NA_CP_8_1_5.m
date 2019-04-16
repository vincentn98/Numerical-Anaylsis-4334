%8.1 Computer Exercise 5
for i = 1:3
    for j = 1:3
        a(i,j) = randi([1 100],1);
    end
end
b = transpose([1,2,3]);
n = 3;
xcor = linsolve(a,b)
for k = 1:n
    l(k,k) = 1;
    for j = k:n
        summy = 0;
        term = 0;
        for s = 1:k-1
            term = summy+l(k,s)*u(s,j);
            summy = term;
        end
        u(k,j) = a(k,j) - term;
    end
    for i = k+1:n
        summy1 = 0;
        term1 = 0;
        for s = 1:k-1
            term1 = summy1+l(i,s)*u(s,k);
            summy1 = term1;
        end
        l(i,k) = (a(i,k)-term1)/u(k,k);
    end
end
z = b;
for i = 2:n
    summy2 = 0;
    term2 = 0;
    for j = 1:i-1
        term2 = summy2+l(i,j)*z(j);
    end
    z(i) = b(i)-term2;
end
l
u
x(n) = z(n)/u(n,n);
for i = n-1:-1:1
    summy3 = 0;
    term3 = 0;
    for j = i+1:n
        term3 = summy3+u(i,j)*x(j);
    end
    x(i) = (z(i)-term3)/u(i,i);
end
transpose(x)