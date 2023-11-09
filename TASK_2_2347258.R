
#1.Create two matrices, matrix_A and matrix_B
matrix_A=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
matrix_A
matrix_B=matrix(c(11,22,33,44,55,66,77,88,44),nrow=3,ncol=3,byrow=TRUE)
matrix_B


#2.Calculate the sum of matrix_A and matrix_B and store the result in a new matrix named matrix_sum.
matrix_sum =matrix_A+matrix_B
matrix_sum 

#3.Calculate the difference between matrix_A and matrix_B and store the result in a new matrix named matrix_diff.
matrix_diff=matrix_A-matrix_B
matrix_diff

#4.Multiply matrix_A by a scalar value of 2 and store the result in a new matrix named matrix_mult.
matrix_mult=5*matrix_B
matrix_mult

# 5. Calculate the product of matrix_A and matrix_B
matrix_product=matrix_A*matrix_B #or use matrix_A %*% matrix_B
matrix_product


# 6. Find the transpose of matrix_A
matrix_A_transpose=t(matrix_A)
matrix_A_transpose

# 7. Calculate the determinant of matrix_B
determinant_B = det(matrix_B)
determinant_B


# 8. Invert matrix_B to obtain the inverse matrix
matrix_B_inverse =solve(matrix_B)
matrix_B_inverse

# 9. Check if matrix_B is orthogonal
orthogonal_check=all( matrix_B_inverse==determinant_B)

if (orthogonal_check) {
  print("Matrix B is orthogonal.")
} else {
  print("Matrix B is not orthogonal.")
}

# 10. Calculate the element-wise square root of matrix_A
matrix_A_sqrt = sqrt(matrix_A)
matrix_A_sqrt

# 11. Calculate the mean of all the elements in matrix_B
mean_B=mean(matrix_B)
mean_B

# 12. Calculate the sum of each column in matrix_A
sum_columns_A= colSums(matrix_A)
sum_columns_A



# 13. Calculate the row means of matrix_B
row_means_B = rowMeans(matrix_B)
row_means_B 

# 14. Extract the second row of matrix_A
second_row_A = matrix_A[2, ]
second_row_A

# 15. Extract the third column of matrix_B
third_column_B = matrix_B[, 3]
third_column_B 


