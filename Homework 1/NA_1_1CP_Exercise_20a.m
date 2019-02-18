%1.1 exercise 20a

m0 = int8(11);
n0 = int8(5);

x0 = double(m0/n0)
y0 = double(m0)/double(n0)

m1 = int8(12);
n1 = int8(6);

x1 = double(m1/n1)
y1 = double(m1)/double(n1)

%x0 ~= y0 because x0 performs integer division while y perfoms
%floating point division so x0 produces the rounded value and y0 produces
%the unrounded value. So y0 would produce the more accurate answer.

%x1 == y1 because in this case the rounded values are equivalent to the
%unrounded value, which are also divisible integers, hence producing the
%same value.