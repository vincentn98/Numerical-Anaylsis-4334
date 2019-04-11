%2.1 Computer Exercise 3

a = [2,3,4;3,4,5;4,5,6]
b = [2;3;4]

A = [2,3,4;3,4,5;4,5,6];
B = [2;3;4];
rraug = rref([a,b])
n = 3;

for k = 1 : n-1
    for i = k+1 : n
        b(i) = i+1;
        xmult = a(i,k)/a(k,k);
        a(i,k) = xmult;
        for j = k+1 : n
            a(i,j) = i + j;
            a(i,j) = a(i,j)-(xmult)*a(k,j);
        end
        b(i) = b(i) - (xmult)*b(k);
    end
end

x(n) = b(n)/(a(n,n));
for i = n-1 : 1
    sum = b(i);
    for j = i+1 :n
        sum = sum-a(i,j)*x(j);
    end
    x(i) = sum/a(i,i);
end

a
b
x = transpose(x)