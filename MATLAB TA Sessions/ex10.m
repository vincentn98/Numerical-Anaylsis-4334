%ex10
clear

iterMax = 30;
y = zeros(iterMax,1);
error = zeros(iterMax,1);
x = 0.5;
h = 1;
emin = 1;

for i = 1:iterMax
    h = .25*h;
    y(i) = (sin(x+h)-sin(x))/h;
    error(i) = abs(cos(x)-y(i));
    if error(i) < emin
       emin = error(i);
       imin = i;
    end
end

table((1:iterMax)',y,error,'VariableNames',{'Iteration','y','Error'})
disp(['Minimum error is: ',num2str(emin)])
disp(['Minimum error occurs at iteration ',num2str(imin)])

figure
subplot(2,1,1)
plot((1:iterMax),y)
hold on
plot([1 iterMax],[cos(x) cos(x)])
hold off

title(['Derivative of sin(',num2str(x),')'])
xlabel('Iteration')