Vec1 <- c(44, 25, 64, 96, 30) 
Vec2 <- c(1, FALSE, 9.8, "hello world") 
typeof(Vec1) 
typeof (Vec2) 
#To delete a vector 
Vec1 <- NULL 
Vec2 <- NULL 
Vec1


#TO Access Vector Elements 
x=c("Jan", "Feb", "March", "Apr", "May", "June", "July") 
w=x[c (3,2,7)] # Subset by index/ Subset using numeric vector
y=x [c (TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)] # Subset by logical vector(Logical indexing)
z=x [c (-3, -7)] #negative indexing
c=x [c (0,0,0,1,0,0,1)] #0/1 can also be used
w
y 
z
c


#Vector Arithmetic 
v1=c (4,6,7,31,45,7) 
v2=c (54,1,10,86,14,57) 
add=v1+v2 
add
sub=v1-v2 
sub 
multi=v1*v2 
multi 
divi=v1/v2 
divi 



#Sorting a Vector 
f=c(656,34,5,-6,"so","jo")
sorted=sort(f)
sorted
revsorted=sort(f,decreasing = TRUE)
revsorted
theorder=order(f)
theorder

# to access documentation and information about functions or commands. 
help(mean)
?mean
??mean

assign("x",c(6,12,4))
x
y=c(x,0,x)
y
1/y

sample_variance=sum((x-mean(x))^2)/(length(x)-1)
sample_variance

z=c('hi','go',TRUE,FALSE,88)
z
typeof(z)

f=c(TRUE,FALSE)
f
typeof(f)

d=c(5i,5+6i)
d
typeof(d)

s=c(1,2,3,4)
class(s)
typeof(s)
length(s)
attributes(s)

