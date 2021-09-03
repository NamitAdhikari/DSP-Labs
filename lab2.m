# Lab 2

# Generate a continuous time sinusoidal wave of amplitude 5
x = -5:0.1:5
y = 5 * sin(x)
subplot(3,2,1)
plot(x, y)
title('Continuous time Sinusoidal wave of amplitude 5')
xlabel('X-axis')
ylabel('Y-axis')

# Generate unit impulse function
t = -10:10
d = [zeros(1, 10), ones(1, 1), zeros(1, 10)]
subplot(3, 2, 2)
stem(t, d)
title('Impulse Function') 

# Generate unit step function
step_x = -10:10
step_y = step_x >= 0
subplot(3, 2, 3)
stem(step_x, step_y)
title('Unit Step Function')
xlabel('Time Period')
ylabel('Amplitude')

# Generate unit ramp function
ramp_x = -10:10
ramp_y = (ramp_x >= 0).*ramp_x
subplot(3, 2, 4)
stem(ramp_x, ramp_y)
title('Unit Ramp Function')
xlabel('Time Period')
ylabel('Amplitude')

# Generate continuous time sinc function = sin(x) / x
x = -10:0.1:10
for i = 1:201
  if x(i) == 0
    y(i) = 1
  else
    y(i) = sin(x(i)) / x(i)  
  endif
endfor
subplot(3, 2, [5, 6])
plot(x, y)
title('Continuous time sinc function')
xlabel('Time Period')
ylabel('Amplitude')
figure

# Generate continuous time exponential
# Growing signal
x = -10:0.1:10
y = exp(x)
subplot(2, 2, 1)
plot(x, y)
title('Growing Exponential Function')
xlabel('Time Period')
ylabel('Amplitude')

# Decaying signal
x = -10:0.1:10
y = exp(-x)
subplot(2, 2, 2)
plot(x, y)
title('Decaying Exponential Function')
xlabel('Time Period')
ylabel('Amplitude')

# DC signal
x = -10:0.1:10
y = 1
subplot(2, 2, [3, 4])
plot(x, y)
title('DC Signal')
xlabel('Time Period')
ylabel('Amplitude')