# Lab 1
# To study important commands of MATLAB software

# clc - used to exit command cli
# close - used to close command figure

x = [1, 2, 3, 4, 5]
y = [6, 7, 8, 9, 10]
subplot(2, 2, 1)
plot(x, y)
xlabel('x')
ylabel('y')
title('Straight Line')

# x^2 + 9y^2 = 36 (parabolic equation)
x1 = -10:0.1:10
y1 = sqrt((36 - x1.^2) / 9)
subplot(2, 2, 2)
plot(x1, y1)
xlabel('x')
ylabel('y')
title('Parabolic')

subplot(2, 2, 3)
stem(x, y)
title('Stem plot of x and y')

