# 1. Create a vector named sales_data
sales_data=c(45,60,35,75,80,62,48,53,69,72,40,55)

# 2. Calculate the total annual sales
total_annual_sales=sum(sales_data)
total_annual_sales

# 3. Compute the monthly average sales
monthly_average_sales=total_annual_sales/length(sales_data)
monthly_average_sales

# 4. Determine the month with the highest and lowest sales
highest_sales=max(sales_data)
highest_sales
highest_sales_month=match(highest_sales,sales_data)
highest_sales_month

lowest_sales=min(sales_data)
lowest_sales
lowest_sales_month=match(lowest_sales,sales_data)
lowest_sales_month

# 5. Increase the sales figure for the third month (March) by 10%
sales_data[3]=sales_data[3]*.1

# 6. Sort the sales_data vector in ascending order
sorted_sales= sort(sales_data)
sorted_sales

# 7. Sort the sales_data vector in descending order
reverse_sorted_sales= sort(sales_data, decreasing = TRUE)
reverse_sorted_sales

# 8. Calculate the median sales value from the sorted_sales vector
median_sales = median(sorted_sales)
median_sales
