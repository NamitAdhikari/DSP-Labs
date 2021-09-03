# Lab 3: Sampling of Signal
# Generate signal x = 5sin(2 pi f t) with 5 cycles & f = 2 kHz
# sample the signal with frequence 5, 10, 20 kHz

# Sine signal

cycle = 5
freq = 2000   # 2 kHz = 2000 Hz
t = 0 : 0.000001 : cycle * (1/freq)
x = 5 * sin(2*pi*freq*t)
subplot(2, 2, 1)
plot(t, x)
title('Sinusoidal wave of frequency 2 kHz having 5 cycles')
xlabel('Time (in secs)')
ylabel('Amplitude')

# Sampling for 5, 10, 20 kHz, i.e. 5000, 10000, 20000 Hz

samp_freq = [5000, 10000, 20000]
for i = 1:3
  t1 = 0 : 1/samp_freq(i) : cycle * (1/freq)
  x1 = 5 * sin(2*pi*freq*t1)
  subplot(2, 2, i+1)
  plot(t, x)
  hold on
  stem(t1, x1)
  title(sprintf('Sampling Continuous sinusoidal signal at frequency = %d kHz', samp_freq(i)/1000))
  xlabel('Time (in secs)')
  ylabel('Amplitude')
endfor