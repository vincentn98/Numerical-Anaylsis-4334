%1.1 exercise 1

format shortG;
format compact;

x = .5;
h = 1;
emin = 1;
n = 30;

%After 14 iterations, the amount of error is at a minimal.

disp('          i             h           y         error');

for i = 1:n
    h = (.25)*h;
    y = (sin(x+h)-sin(x))/h;
    error = abs(cos(x)-y);
    
    output = [i, h, y, error];
    disp(output);
    
    if error < emin
        emin = error;
        imin = i;
    end
end

disp('imin is'); disp(imin);
disp('emin is'); disp(emin);