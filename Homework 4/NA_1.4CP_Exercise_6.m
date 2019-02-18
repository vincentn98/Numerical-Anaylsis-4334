function [ y ] = CP6(x)
y1 = sin(x)-1+cos(x); %This function is the original function.

%We now start using Taylor Series to compute our original function.
a=0;
for i = 1:6 %We stop at 6 for single bit, for double we would use 11.
    b = ((-1)^i)*x^(2*i)/(factorial(2*i));
    a = a+b;
end

y2 = sin(x)+a; %This will give the value using the Taylor series of the
               %original function.
               
y = [y1,y2]; %We print out both values for easy comparison.

