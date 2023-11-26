vec1<- c(1,2,3,4,5,443,3)
vec2<-c(FALSE,22,6.9,TRUE,"HH")
typeof(vec1)
typeof(vec2)
vec1<- NULL
vec2<- NULL
vec1



x<-c("jan","feb","mar","april","MAY")
# Subset by index/ Subset using numeric vector
y <- x[c(3, 2)] # Select elements at index 3 and 2
y
z <- x[c(-3, -2)] # Exclude elements at index 3 and 2
z
v <- x[c(2, 3, 1)] 
v
# Subset by logical vector
a <- x[c(TRUE, FALSE)] # Selects elements where corresponding logical values are TRUE
a



q1=c(1,2,3,45,5)
q2=c(11,2,33,44,55)
add=q1+q2
add
sub=q2-q1
sub
mult=q1*q2
mult
div=q2/q1
div


f=c(656,34,5,-6,"so","jo")
sorted=sort(f)
sorted
revsorted=sort(f,decreasing = TRUE)
revsorted
theorder=order(f)
theorder

