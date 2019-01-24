%1.1 exercise 20b

x = 7.4;
y = 3.8;
n = x+y
n0 = round(x,0)+round(y,0)

%The value n recieves is n = 11.2, as 7.4 + 3.8 = 11.2.
%However, when the last statement is replaced with
%n<-integer(x)+integer(y), x will round to 7 and y will round to 4,
%hence resulting in 7 + 4 = 11, so n will recieve the value of 11.