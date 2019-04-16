function I = ex24c(f,a,b,n)
    h = (b-a)/n;
    I = 0;
    for i = 0:n-1
        I = I + f(a+i*h);
    end
    I = I*h;
end