f(x) = (x-1)^8;
dp = 1.5;
for i = 1:20
    a(i)dp;
    dn = dp-(1/8)*(dp-1);
    xv(i) = dn;
    dp = dn;
    c(i) = dn;
    y(i) = f(dn);
end
diff = xv-a;
xv = c;
fx = y;
table = transpose(double([xv;fx;diff]));