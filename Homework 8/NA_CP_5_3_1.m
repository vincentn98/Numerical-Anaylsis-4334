%NA_CP_5_3_1

e = (.5)*10^(-5);
level_max = 4;

function [simpson_result] = Simpson(f,a,b,e,level,level_max)
    level = level + 1;
    h = b-a;
    c = (a+b)/2;
    one_simpson = h*((f(a)+4*f(c)+f(b)))/6;
    d = (a+c)/2;
    e = (c+b)/2;
    two_simpson = h*(f(a)+4*f(d)+2*f(c)+4*f(e)+f(b))/12;
    if level >= level_max
        simpson_result = two_simpson;
        disp("maximum level reached")
    else
        if abs(two_simpson - one_simpson) < 15*e
            simpson_result = two_simpson + (two_simpson - one_simpson)/15;
        else
            left_simpson = Simpson(f,a,c,e/2,level,level_max);
            right_simpson = Simpson(f,c,b,e/2,level,level_max);
            simpson_result = left_simpson + right_simpson;
        end
    end
end