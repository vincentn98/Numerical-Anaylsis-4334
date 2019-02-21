clear
format long
format compact

%Set the variables. This second program will use the interval [1,2].
a = 1;
b = 2;
Espi = ((1/2)*(10^-6));
error = (b-a);
fa = (tan(a) - a);
fb = (tan(b) - b);
i = 0;

%Test to help avoid overflow/underflow
if (sign(fa) == sign(fb))
    disp(['Variable a: ', num2str(a)]);
    disp(['Variable fa: ', num2str(fa)]);
    disp(['Variable b: ', num2str(b)]);
    disp(['Variable fb: ', num2str(fb)]);
    disp(' ');
end
%Create a while loop to preform bisection method and end when a root is
%found!
while (abs(error) >= Espi)
    error = (error/2);
    c = (a + error);
    fc = (tan(c) - c);
    disp(['Iteration i: ', num2str(i)]);
    disp(['Variable c: ', num2str(c)]);
    disp(['Variable fc: ', num2str(fc)]);
    disp(['Error: ', num2str(error)]);
    disp(' ');
    %This determines convergence, if not convergent bounds are changed
    %accordingly
    if (abs(error) < Espi)
        disp('Convergence!');
    end
    if(sign(fa) ~= sign(fc))
        b = c;
        fb = fc;
    else
        a = c;
        fa = fc;
    end
    %Counter
    i = i+1;
end