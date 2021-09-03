# Lab 5: Convolution of two signals
# Linear Convolution

# Perform Linear Convolution
# 1. x[n] = {1,1,1} & h[n] = {1,1,1}
# 2. x[n] = {0,1,2,3,4} & h[n] = {0,2,3,4,5}

x_n = {[1 1 1], [0 1 2 3 4]}
h_n = {[1 1 1], [0 2 3 4 5]}

for i = 1:2
  figure
  y_n = conv(x_n{i}, h_n{i})
  subplot(2,2,1)
  stem(x_n{i}, 'filled')
  title(' x[n] ')
  subplot(2,2,2)
  stem(h_n{i}, 'filled')
  title(' h[n] ')
  subplot(2,2,[3,4])
  stem(y_n, 'filled')
  title(sprintf('Linear Convolution x[n] and h[n] for Q. No. %d', i))
  xlabel('n')
  ylabel('y[n]')
endfor