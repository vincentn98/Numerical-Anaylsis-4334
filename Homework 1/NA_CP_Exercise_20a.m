%1.1 exercise 20a

m0 = 3+i;
n0 = 2+5i;

x0 = real(m0/n0)
y0 = real(m0)/real(n0)

m1 = 1+2i;
n1 = 1+2i;

x1 = real(m1/n1)
y1 = real(m1)/real(n1)

%x0 ~= y0 because here y0 first takes the real components of m0 and n0,
%and then divides them resulting in y0 = 3/2 = 1.5. On the other hand,
%x0 divides m0 and n0 first before taking the real component,
%resulting in x0 = 0.37931.
%
%x1 == y1 because here m1 and n1 are equivalent and non zero,
%hence when divided by eachother, they equate to 1 regardless of
%whether or not the real component was taken first.
