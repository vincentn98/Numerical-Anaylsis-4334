
format compact;

syms x

delta = 10^(-4);
epsi = 10^(-4);

f(x) = x^3-2*sin(x);
fp(x) = 3*x^2-2*cos(x);

xp = 1/2;
for i = 1:30
    if abs(double(fp(xp))) < delta
        output = 'Small Derivative';
        break
    end
    a(i) = double(xp);                  %Values of x stored
    fpv(i) = double(fp(xp));            %Values of f'(x)
    ratio(i) = double(f(xp)/fp(xp));    %Ratio of f(x)/f'(x)
    xn = double(xp-(f(xp)/fp(xp)));     %Next x value
    xp = xn;                            %Reassignment
    c(i) = xn;                          %Storing reassignment
    y(i) = f(xn);                       %Storing values of f(xn)
    if abs(double(ratio(i))) < epsi
        output = 'convergence';
    else
        output = 'Inconclusive';
    end
end


xv = c;
diff = xv-a;
fx = y;
table = transpose(double([xv;fx;diff])) %Gives a table.
output
