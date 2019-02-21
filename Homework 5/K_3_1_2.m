clear
format long
format compact

%Set the variables.
a = 0;
b = 1;
Espi = ((1/2)*(10^-6));
error = (b-a);
fa = ((9*(a^4))+(18*(a^3))+(38*(a^2))-(57*a)+14);
fb = ((9*(b^4))+(18*(b^3))+(38*(b^2))-(57*b)+14);
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
    fc = ((9*(c^4))+(18*(c^3))+(38*(c^2))-(57*c)+14);
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