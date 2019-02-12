%ex05 covers plot
clear

x = 1:10;
y = x.^2;
figure
plot(x,y,'-or')

x = linspace(1,10);
y = x.^2;
figure
plot(x,y,'-o')


%create a new figure, and plot a
%function of your choice
%experiment with color, markers, line style
%please name your new vector y2

y2 = 20*sin(x);
hold on
plot(x,y2,'-d')
hold off

title('Sample Line Plots')
xlabel('x')
ylabel('f(x)')
legend('Quadratic','sinusoidal','Location','northeastoutside')