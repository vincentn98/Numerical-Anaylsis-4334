a = 0;
b = pi;
n = 3;
f = @sin;

I = ex24c(f,a,b,n)

error = abs(2-I)
h = (b-a)/n;
error_b = h*(b-a)/2