%ex03 covers vectors and for loops
clear

x = [2 3 4 5];
y = 1:4;
z = 2:2:10;
s = x+y;
z = 2*z;
z = z/2;
z = z.^2;
z = z';
x = [2; 3; 4; 7];
x(2);
x(2:4);

%Calculate sum of integers, 1 to 128
a = 0;
for i = 1:128
    a = i + a;
end
disp(a)