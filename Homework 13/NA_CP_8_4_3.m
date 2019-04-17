%8.4 Computer Exercise 3

%Jacobi Method

kmax = 100;
delta = 10^(-10);
epsi = (1/2)*10^(-4);

a = [7,3,-1,2;3,8,1,-4;-1,1,4,-1;2,-4,-1,6];
as = a;
b = [-1;0;-3;1];
bs = b;
x = [0,0,0,0];

n = 4;

for k = 1:kmax
    
    y = x;
    for i = 1:n
        sum = b(i);
        diag = a(i,i);
        if abs(diag) < delta
            output = 'diagonal too small'
            break
        end
        
        for j = 1:n
            if j ~= i
                sum = sum-a(i,j)*y(j);
            end
        end
        x(i) = sum/diag;
    end
    k;
    x;
    if norm(x-y) < epsi
        k;
        x;
        break
    end
end
output = 'maximum iterations reached'
k
x
check = as*transpose(x)-bs

clear all

%%

%Gauss-Seidel Method

kmax = 100;
delta = 10^(-10);
epsi = (1/2)*10^(-4);

a = [7,3,-1,2;3,8,1,-4;-1,1,4,-1;2,-4,-1,6];
as = a;
b = [-1;0;-3;1];
bs = b;
x = [0,0,0,0];

n = 4;

for k = 1:kmax
    
    y = x;
    for i = 1:n
        sum = b(i);
        diag = a(i,i);
        if abs(diag) < delta
            output = 'diagonal too small'
            break
        end
        
        for j = 1:i-1
            sum = sum-a(i,j)*x(j);
        end
        for j = i+1:n
            sum = sum-a(i,j)*x(j);
        end
        x(i) = sum/diag;
    end
    k;
    x;
    if norm(x-y) < epsi
        k;
        x;
        break
    end
end

output = 'maximum iterations reached'
k
x
check = as*transpose(x)-bs

clear all

%%

%SOR Method

kmax = 100;
delta = 10^(-10);
epsi = (1/2)*10^(-4);

a = [7,3,-1,2;3,8,1,-4;-1,1,4,-1;2,-4,-1,6];
as = a;
b = [-1;0;-3;1];
bs = b;
x = [0,0,0,0];

w = 1.4;

n =4;

for k = 1:kmax
    
    y = x;
    for i = 1:n
        sum = b(i);
        diag = a(i,i);
        if abs(diag) < delta
            output = 'diagonal too small'
            break
        end
        
        for j = 1:i-1
            sum = sum-a(i,j)*x(j);
        end
        for j = i+1:n
            sum = sum-a(i,j)*x(j);
        end
        x(i) = sum/diag;
        x(i) = w*x(i)+(1-w)*y(i);
    end
    k;
    x;
    if norm(x-y) < epsi
        k;
        x;
        break
    end
end

output = 'maximum iterations reached'
k
x
check = as*transpose(x)-bs