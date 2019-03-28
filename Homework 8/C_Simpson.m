clc;
format long
format compact
 
eps = (.5)*10^(-5);     % setting boundaries
level_max = 4;
 
ax1 = subplot(2,1,1);   % first integral in top subplot
x1 = linspace(0,1);     % x,y plot
y1 = 4./(1+x1.^2);
 
plot(ax1,x1,y1)
xlim([0 1]);            % chart limits and formatting
ylim([0 5]);
title(ax1, 'Approximation of [ \int4/(1+x^2) dx , [0,1] ]');
ylabel(ax1, '4/(1+x^2)');
 
f1 = @(x) 4./(1+x.^2); 
fprintf("Approximating 4/(1+x^2) on [0,1]...\n");
simpson_result1 = Simpson(f1,0,1,eps,1,level_max);  % fn. call
text(.75,3.5,'sum = ' + string(simpson_result1));   % float text
 
ax2 = subplot(2,1,2);   % repeat for second integral approximation
x2 = linspace(0,1/(sqrt(2)));   % bottom subplot
y2 = 8*(sqrt(1-x2.^2)-x2);
 
plot(ax2,x2,y2)    % formatting
ylim([0,9]);
title(ax2, 'Approximation of [ \int8*(sqrt(1-x^2)-x) dx , [0,1/sqrt2] ]');
ylabel(ax2, '8*(sqrt(1-x^2)-x)');
 
f2 = @(x) 8*(sqrt(1-x^2)-x);
fprintf("\n\nApproximating 8*(sqrt(1-x^2)-x) on [0,1/sqrt(2)]...\n");
simpson_result2 = Simpson(f2,0,1/sqrt(2),eps,1,level_max);  % fn. call 2
text(.6,3.5,'sum = ' + string(simpson_result2));
  
% Recursive Simpson function based on pseudo from the textbook
function [ simpson_result ] = Simpson (f,a,b,eps,level,level_max)
    level = level + 1;
    h = b-a;
    c = (a+b)/2;
    one_simpson = h*(f(a) + 4*f(c) + f(b))/6;
    d = (a+c)/2;
    e = (c+b)/2;
 
    line([a a], [0 f(a)],'Linestyle','--');  % vertical lines marking boundaries
    text(a,6.5-level*1.5,'a' + string(level-1) + ' = ' + string(a))
 
    two_simpson = h*(f(a) + 4*f(d) + 2*f(c) + 4*f(e) + f(b))/12;
 
    if level >= level_max
        simpson_result = two_simpson;
        fprintf("\nMaximum level reached\n")
    else
        if abs(two_simpson - one_simpson) < 15*eps
            simpson_result = two_simpson + (two_simpson - one_simpson)/15;
        else
            left_simpson = Simpson(f,a,c,eps/2,level,level_max);
            right_simpson = Simpson(f,c,b,eps/2,level,level_max);
            simpson_result = left_simpson + right_simpson;
        end
    end
end