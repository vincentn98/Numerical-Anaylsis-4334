%5.3 Computer Exercise 1
format long
format compact
%Set boundaries
epsi = (.5)*10^(-5);
level_max = 4;
%%
%First integral
x_0 = subplot(2,1,1);
x0 = linspace(0,1);
y0 = 4./(1+x0.^2);
plot(x_0,x0,y0)
xlim([0 1]);
ylim([0 6]);
f0 = @(x) 4./(1+x.^2);
simpson_result0 = Simpson(f0,0,1,epsi,1,level_max);
sum0 = (simpson_result0)
%Second Integral
x_1 = subplot(2,1,2);
x1 = linspace(0,1/(sqrt(2)));
y1 = 8*(sqrt(1-x1.^2)-x1);
plot(x_1,x1,y1)
xlim([0,1]);
ylim([0 10]);
f1 = @(x) 8*(sqrt(1-x^2)-x);
simpson_result1 = Simpson(f1,0,1/sqrt(2),epsi,1,level_max);
sum1 = (simpson_result1)
%%
%Recursive Function Simpson
function [simpson_result] = Simpson(f,a,b,epsi,level,level_max)
    level = level + 1;
    h = b-a;
    c = (a+b)/2;
    one_simpson = h*((f(a)+4*f(c)+f(b)))/6;
    d = (a+c)/2;
    e = (c+b)/2;
    two_simpson = h*(f(a)+4*f(d)+2*f(c)+4*f(e)+f(b))/12;
    if level >= level_max
        simpson_result = two_simpson;
        disp('maximum level reached')
    else
        if abs(two_simpson - one_simpson) < 15*epsi
            simpson_result = two_simpson + (two_simpson - one_simpson)/15;
        else
            left_simpson = Simpson(f,a,c,epsi/2,level,level_max);
            right_simpson = Simpson(f,c,b,epsi/2,level,level_max);
            simpson_result = left_simpson + right_simpson;
        end
    end
end