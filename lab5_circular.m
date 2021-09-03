# Lab 5: Convolution of two signals
# Circular Convolution

# Perform circular convolution
# x1 = [1 2 2 0] & x2 = [1 2 3 4]

x1 = [1, 2, 2, 0]
x2 = [1, 2, 3, 4]

# since n1 and n2 are same, there's no need for padding
len_1 = length(x1)
len_2 = length(x2)
n = max(len_1, len_2)
y = zeros(1, n)

if len_1 > len_2
  x2 = [x2, zeros(1, len_1 - len_2)]
elseif len_1 < len_2
  x1 = [x1, zeros(1, len_2 - len_1)]
endif

for m = 0 : n-1
  for o = 0 : n-1
    z = mod(m-o, n)
    y(m+1) = y(m+1) + x1(o+1) .* x2(z+1)
  endfor
endfor

stem(y)
xlabel('x(1) * x(2)')
ylabel('Samples')
title('Circular Convolution')