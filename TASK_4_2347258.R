employee_data <- data.frame(
  EmployeeID = 1:20,
  Name = c("ro","aaron","sona","abin","ann","pavi","vishnu","manju","dhnwin","mohit","joe","hiran","aravnd","amar","akhil","sid","ashwin","ancy","shawn","alwin"),
  Department = sample(c("HR", "IT", "Finance", "Marketing"), 20, replace = TRUE), 
  Salary = sample(1:20, 20), 
  JoiningDate = sample(seq(as.Date('2010-01-01'), as.Date('2023-01-01'), by="days"), 20)  
)
write.csv(employee_data,"employee_data.csv",row.names = FALSE)

# Load the dataset from "employee_data.csv" into a data frame in R.
data <- read.csv("employee_data.csv")

# Display the structure of the data frame, including column names and data types.
str(data)

# Calculate and add a new column named "Years of Service" to the data frame, representing the number of years each employee has worked in the company.
data$JoiningDate <- as.Date(data$JoiningDate)
data$YearsOfService <- as.numeric(difftime(Sys.Date(), data$JoiningDate, units = "days")/365.25)


# Create a new data frame named "Senior Employees" containing records of employees who have worked for the company for 5 or more years.
SeniorEmployees <- data[data$YearsOfService >= 5, ]


# Calculate and print the average salary of employees in each department.
avg_salary_by_department <- tapply(data$Salary, data$Department, mean)
print(avg_salary_by_department)

# Determine the highest and lowest salaries in the entire dataset and identify the employees with these salaries.
max_salary <- max(data$Salary)
min_salary <- min(data$Salary)

employee_with_max_salary <- data[data$Salary == max_salary, ]
employee_with_min_salary <- data[data$Salary == min_salary, ]

# Print the results
cat("Highest Salary:", max_salary, "Employee:", employee_with_max_salary$Name, "\n")
cat("Lowest Salary:", min_salary, "Employee:", employee_with_min_salary$Name, "\n")

# Create a bar plot to visualize the number of employees in each department.
barplot(table(data$Department), main="Number of Employees in Each Department", xlab="Department", ylab="Number of Employees", col="skyblue")


# Generate a scatter plot to explore the relationship between years of service and salary.
plot(data$YearsOfService, data$Salary, main="Scatter Plot of Years of Service vs. Salary", xlab="Years of Service", ylab="Salary", pch=16, col="darkgreen")

# Save the "Senior Employees" data frame as a CSV file named "senior_employees.csv."
write.csv(SeniorEmployees, "senior_employees.csv", row.names=FALSE)

