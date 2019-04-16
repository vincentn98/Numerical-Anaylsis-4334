%2.2 Computer Exercise 2

a = [.4096,.1234,.3678,.2943;.2246,.3872,.4015,.1129;.3645,.1920,.3781,.0643;.1784,.4002,.2786,.3927];
b = [.4043;.1550;.4240;.2557];
rref([a,b])
n = 4;
for i = 1:n
    l(i) = i;
    smax = 0;
    for j = 1:n
        smax = max(smax,abs(a(i,j)));
    end
    s(i) = smax;
end

for k = 1:n-1
    rmax = 0;
    for i = k:n
        r = abs(a(l(i),k)/s(l(i)));
        if r > rmax
            rmax = r;
            j = i;
        end
    end
    swapj = l(j);
    swapk = l(k);
    l(j) = swapk;
    l(k) = swapj;
    for i = k+1:n
        xmult = a(l(i),k)/a(l(k),k);
        a(l(i),k) = xmult;
        for j = k+1:n
            a(l(i),j) = a(l(i),j)-xmult*a(l(k),j);
        end
    end
end

for k = 1:n-1
    for i = k+1:n
        b(l(i)) = b(l(i))-a(l(i),k)*b(l(k));
    end
end

x(n) = b(l(n))/a(l(n), n);
for i = n-1:-1:1
    sum = b(l(i));
    for j = i+1:n
        sum = sum-a(l(i),j)*x(j);
    end
    x(i) = sum/a(l(i),i);
end
x