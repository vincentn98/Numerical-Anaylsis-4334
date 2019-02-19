%1.1 exercise 2

format shortG;
format compact;

x = .5;
h = 1;
emin = 1;
n = 30;

%After 14 iterations, the amount of error is at a minimal.

disp('          i             h           y         error');

for i = 1:n
    h = 0.25 * h;
    y = (tan(x+h) - tan(x)) / h;
    error = abs(sec(x)^2 - y);
    
    output = [i, h, y, error];
    disp(output);
    
    if error < emin
        emin = error;
        imin = i;
    end
end

disp('imin is'); disp(imin);
disp('emin is'); disp(emin);