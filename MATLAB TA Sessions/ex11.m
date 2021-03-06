%ex11 covers Function Handles and Anonymous Functions
clear

%Function Handle is a pointer/reference to a function
%fh1 = @(x) f1(x); %creates handle referring to f1
%%
%I1 = integral(fh1,0,1)

%A function defined with a function handle is an anonymous function
%fh2 = @(x) x.^2+x+1;
%I2 = integral(fh2,0,1)

%y1 = f1(1)
%yh1 = fh1(1)
%yh2 = fh2(1)

%%
%Write a function that takes 2 functions as inputs. Return a function
%handle that is the product of the two functions.
%Test with 2 trig functions
%Plot the resulting function from [0,pi]

%function y = f1(x)
%   y = x.^2+x+1; 
%end

%ah1 = @(x) a1(x);

%I3 = integral(ah1,0,pi)

y3 = a1(@(x) sin(x),@(x) cos(x))
%yh3 = ah1(1)
%yh4 = ah2(1)
x = linspace(0,pi);
figure
plot(x, y3(x))
title('Example')
function y = a1(yh3,yh4)
    y =@(x) yh3(x).*yh4(x);
end