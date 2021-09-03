# Lab 4 : Fourier Series
# Fourier series expansion of odd signal for different N (N=3,9,100)

N = [3, 9, 100]

for i = 1:3
  subplot(2, 2, i)
  Ts = 0.01
  T = 2
  t = 0 : Ts : T - Ts
  f (t < T/2) = 2
  f (t >= T/2) = -2
  a = zeros(1, N(i)+1)
  b = zeros(1, N(i)+1)

  for n = 0:N(i)
    a(n+1) = (2 * Ts / T) * sum(f .* cos(2*pi*n*t/T))
    b(n+1) = (2 * Ts / T) * sum(f .* sin(2*pi*n*t/T))
  endfor
  
  t = -2 * T : Ts : 2 * T
  fs = (a(1)/2) * ones(size(t))
  
  for n = 1:N(i)
    fs = fs + (a(n+1) * cos(2*pi*n*t/T)) + (b(n+1) * sin(2*pi*n*t/T))
  endfor
  
  plot(t, fs)
  title(sprintf('Fourier Series expansion of odd signal for N = %d', N(i)))
endfor