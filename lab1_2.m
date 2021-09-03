# Lab 1
# Familiarization with MATLAB Environment
# Creating matrix A with size 3x4, and matrix B with size 4x3
mat_A = [ 
  1, 2, 3, 4;
  5, 6, 7, 8;
  4, 10, 8, 6;
]
size(mat_A)

mat_B = [
  4, 6, 8;
  2, 7, 4;
  8, 9, 2;
  7, 5, 4;
]
size(mat_B)

# adding mat_A and mat_B
#sum = mat_A + mat_B

# subtracting mat_A from mat_B
#subt = mat_B - mat_A

# multiply mat_A and mat_B
mul_mats_AB = mat_A * mat_B

# multiply mat_B and mat_A
mul_mats_BA = mat_B * mat_A

# transpose mat_A and mat_B
trans_matA = mat_A'
size(trans_matA)

trans_matB = mat_B'
size(trans_matB)

# multiplying transposed matrices
mul_trans_mats_AB = trans_matA * trans_matB
mul_trans_mats_BA = trans_matB * trans_matA

