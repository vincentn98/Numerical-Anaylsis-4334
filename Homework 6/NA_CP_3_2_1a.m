%3.2 Computer Exercise 1(a) 

syms x

delta = 10^(-3);
epsi = 10^(-7);

f(x) = tan(x)-x;
fp(x) = (sec(x))^2-1;

xp = 7;
for i = 1:20
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