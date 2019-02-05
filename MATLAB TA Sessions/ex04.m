%ex04 covers functions and help
clear

Text = quadrant(-1,2)

%Write function and test for input value 8

function p = myProduct(x)
    %Computes the product of integers from 1 to x
    a = 1;
    for i = 1:x
        p = a*i;
    end
    disp(myProduct(x))
end

