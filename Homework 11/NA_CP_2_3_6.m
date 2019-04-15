%2.3 Computer Exercise 6
format compact

for k = 1:50
    n = 50;
    for i = 1:50
        b(k,i) = mod(i-1+k,50);
        b1(k,i) = mod(i-1+k,50);
    end
    
    for j = 1:50
        if b(k,j) == 0
            b(k,j) = 50;
        end
    end
    
    for j = 1:n-2
        a(j) = -1;
        d(j+1) = 5;
        c(j+1) = -1;
    end
    
    c(1) = -1;
    d(1) = 5;
    a(n-1) = -1;
    d(n) = 5;
    
    for i = 2:n
        xmult = a(i-1)/d(i-1);
        d(i) = d(i)-(xmult)*c(i-1);
        b(k,i) = b(k,i)-(xmult)*b(k,i-1);
    end
    
    x(k,n) = b(n)/(d(n));
    for i = n-1:-1:1
        x(k,i) = (b(k,i)-c(i)*x(k,i+1))/d(i);
    end
    x;
end

for i = 1:50
    check(i) = (5*(x(i,1))-x(i,2))-b(i,1);
end
ansc = transpose(check)
ouput = [x,ansc];