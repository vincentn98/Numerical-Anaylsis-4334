%3.3 Computer Exercise 10
format shortG;
syms x
delta = .000000001;
epsi = .000001;
f(x) = atan(x);
xp = 2;
xp1 = -1;
fxp = double(f(xp));
h = fxp;
fxp1 = double(f(xp1));
h1 = fxp;
if fxp1 > fxp
    fxp1 = h;
    fxp = h1;
end

etest(x) = -(1/2)*(-(2*x)/(1+x^2)^2)/(1/(1+x^2));
for i = 1:20
    if fxp1 > fxp
        fxp1 = j;
        fxp = j1;
    end
    denom(i) = double(f(xp)-f(xp1));
    if abs(denom(i)) < delta
        output = 'Too small';
        break
    end
    a(i) = xp;     
    xn = double(xp-((xp-xp1)/(f(xp)-f(xp1)))*f(xp));
    ratio(i) = double(((xp-xp1)/(f(xp)-f(xp1)))*f(xp));                                     
    c(i) = xn;                          
    y(i) = double(f(xn));
    err(i) = double(etest(xn));
    
    xp1 = xp;
    j1 = xp;
    xp = xn;
    j = xn;
    if abs(ratio(i)) < epsi
        output = 'convergence';
        break
    else
        output = 'Inconclusive';
    end
end
diff = c-a;
table = transpose(double([c;y;diff;err])) %Gives a table.
output