x = 1/2;
h = 1;
emin = 1;
n = 30;

results(n,4) = zeros;
for i = 1:n
    h = (.25)*h;
    y = (sin(x+h)-sin(x))/h;
    error = abs(cos(x)-y);
    results(i,1) = i;
    results(i,2) = h;
    results(i,3) = y;
    results(i,4) = error;
    if error < emin
        emin = error;
        imin = i;
    end
end

results
imin
emin