x = 1.0;
s = 1.0;
for i = 1:5000
    x = x+1.0;
    s = s+1.0/x;
    if mod(i,100) == 0
        disp('x is'); disp(x);
        disp('s is'); disp(s);
    end
end
