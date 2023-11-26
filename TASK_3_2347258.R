#Create a list named employee representing the details of an employee
#Display the entire content of the employee list.

employee=list(EmployeeID =1111, Name ="Noah", Salary =1000, Departments = c("development","finance","marketing"))
employee

#Calculate and print the employee's annual salary (12 times the monthly salary).
annual_salary=(employee$Salary)*12
annual_salary

# Update the employee's name
employee$Name="Elijah"
employee$Name


employee[2]="Elijah"
employee[2]

# Add a new department
employee$Departments=c(employee$Departments,"IT")
employee$Departments

# Create a list representing an organization with employees(
organization = list(Name="zoom",
                    Employees = list(
                      list(
                        EmployeeID = 11,
                        Name = "Reign",
                        Salary = 1000,
                        Departments = c("IT")
                      ),
                      list(
                        EmployeeID = 22,
                        Name = "Liah",
                        Salary = 2000,
                        Departments = c("HR")
                      ),
                      list(
                        EmployeeID = 33,
                        Name = "Oliver",
                        Salary = 3000,
                        Departments = c("Finance")
                      )
                    )
)

# Display the entire content of the organization
organization
is.list(organization)


# Access and print the annual salary of the second employee in the organization
organization$Employees[[2]]$Salary*12

# Access and print the name of the organization
organization$Name

organization[1]


#Create a new list named department_employees that groups employees by department.
#Each department should have a list of employees associated with it.
department_employees = list()
for (employee in organization$Employees) {
  departments = employee$Departments
  for (dept in departments) {
    if (dept %in% names(department_employees)) {
      department_employees[[dept]] = c(department_employees[[dept]], employee$Name)
    } else {
      department_employees[[dept]] = list(employee$Name)
    }
  }
}


#Print each list created in the script to show the structure and content of the lists 
str(department_employees);department_employees
str(employee);employee
str(organization$Employees);organization$Employees


#print the department_employees list to demonstrate how employees are grouped by department.
department_employees
