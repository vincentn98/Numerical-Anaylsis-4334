%4.2 Computer Exercise 2
syms x

f(x) = (x^2+1)^-1;
p(x) = x*0;

xv = zeros(1,21);
fv = zeros(1,21);
for i = 1:21
    xv(i) = 5*cos((i-1)*(pi)/20);
    fv(i) = double(f(xv(i)));
end

for i = 1:21
    syms x
    ind(x) = x*1-x+1;
    for j = 1:21;
        if j == i
            ind(x) = ind(x)*1;
        else
            ind(x) = ind(x)*(x-xv(j))/(xv(i)-xv(j));
        end
    end
    l(i) = ind(x);
    a = l(i)*fv(i);
    p(x) = p(x)+a;
end

p(x) = expand(p(x))

pv = zeros(1,21);
check = zeros(1,21);
for i = 1:21
    pv(i) = double(p(xv(i)));
    check(i) = double(p(xv(i))-fv(i));
end

ans = transpose([xv;pv;fv;check])

for i = 1:41
    xv1(i) = -5+(1/4)*(i-1);
    fv1(i) = double(f(xv1(i)));
end

for i = 1:41
    pv1(i) = double(p(xv1(i)));
    diff(i) = pv1(i)-fv1(i);
end

ans1 = transpose([xv1;pv1;fv1;diff])