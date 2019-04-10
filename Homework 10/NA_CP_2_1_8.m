%2.1 Computer Exercise 8
format compact
%We do this 3 times.
for l=1:3
    %Create random matrix
    for i=1:3
        for j=1:3
            a(i,j) = randi([1 100],1);
        end
    end
    a
    xset = [1;2;3]
    b = a*xset
    
    Augm = [a(1,1),a(1,2),a(1,3),b(1);a(2,1),a(2,2),a(2,3),b(2);a(3,1),a(3,2),a(3,3),b(3)]
    RedAug = rref(Augm)
    A = a; % For later use.
    B = b;
    
    n = 3;
    for k = 1 : n-1
        for i = k+1 : n
            xmult = a(i,k)/a(k,k);
            a(i,k) = xmult;
            for j = k+1 : n
                a(i,j) = a(i,j) - (xmult)*a(k,j);
            end
            b(i) = b(i) - (xmult)*b(k);
        end
    end    
    %What the Naive Gaussian procedure produces
    NaiveGa = a
    NaiveGb = b
    
    x(n) = b(n)/(a(n,n));
    for i = n-1 : -1 : 1
        sum = b(i);
        for j = i+1 : n
            sum = sum-a(i,j)*x(j);
        end
        x(i) = sum/a(i,i);
    end
    x = transpose(x)
    realx = linsolve(A,B)
    clear all
end