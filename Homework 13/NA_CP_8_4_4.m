%8.4 Computer Exercise 4

kmax = 100;
delta = 10^(-10);
epsi = (1/2)*10^(-4);
n = 4;

for i = 1:11
    w(i) = 1+(i-1)*(.1);
end

for l = 1:11
    w(l);
    a = [7,3,-1,2;3,8,1,-4;-1,1,4,-1;2,-4,-1,6];
    as = a;
    b = [-1;0;-3;1];
    bs = b;
    x = [0,0,0,0];
    for k = 1:kmax
        y = x;
        for i = 1:n
            sum = b(i);
            diag = a(i,i);
            if abs(diag) < delta
                output = 'diagonal too small'
                break
            end
            
            for j = 1:i-1
                sum = sum-a(i,j)*x(j);
            end
            for j = i+1:n
                sum = sum-a(i,j)*x(j);
            end
            x(i) = sum/diag;
            x(i) = w(l)*x(i)+(1-w(l))*y(i);
        end
        k;
        x;
        if norm(x-y) < epsi
            k;
            x;
            break
        end
    end
    
    output = 'maximum iterations reached';
    k;
    x;
    ite(l) = k;
    check(l) = max(as*transpose(x)-bs);
    clear a x k y sum diag as bs
end
check = transpose(check)
result = [transpose(w),transpose(ite)]