%ex07 covers zeros, ones, character vectors
clear

x = zeros(3,1)
x = zeros(3)
x = ones(3,1)

x = 'Vector'
x(1)
x2 = 'Test'

%concatonate 2 character vectors into one
%using [,]
x3 = [x,' ',x2]

r = rand;
%convert number to string using
%num2str
disp(['Your Random Number is: ',num2str(r)])

r = rand(3)