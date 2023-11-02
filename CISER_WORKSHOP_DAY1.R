
################################################################################
##################### Workshop on R for Data manipulation ##########################
#####################    Day 1 :  April 06, 2023          ##########################  
################################################################################







################################################################################
############################### Some Basics ####################################
################################################################################

# Let's get familiar with the RStudio windows

# How to run the code?
#   1. "Run" the selection (single or multiple lines)
#   2. Keyboard shortcut: ctrl + enter

# Commenting a line or chunk
#   1. Hash (#) is used as comment in R, anything after # won't be run
#   2. To comment-out a chunk of code: ctrl + shift + c
# 

# R is case sensitive
#   x and X are different

# R is an interpreted language


################################################################################
####################### R can work as a calculator #############################
################################################################################


#Addition, subtraction, multiplication, division
2+3
2-3
2*3
2/3 


#Exponents, natural logs, e
2**3 # or 2^3
2^3 

log(9) #natural log

exp(2) #e to the power of 2

exp(log(2))

#Can use parenthesis to control order of operations
#(Math problem from facebook )
6/2*(1+2)

6/(2*(1+2))

#working with strings (put quotes around values for words)
"Hello World"
"hello world"+5
paste("Hi my name is","David")

paste("hi, my name is",3)




#Equalities, inequalities, and Boolean statements

3>4
4<4
4<=4
5 == 5
5!=6


(5 == 5)&(3>4) #And statement
(5 == 5)|(3>4) #Or statement  

#can covert easily between 0s and 1s with boolean statements
(5==5) == 1
TRUE == 2

(TRUE)*1
#Can i change other datatypes?

#Yes! look for as and is 
#int

as.integer("5")

#float

as.double("5.001")

#character

as.character(5)

#boolean

as.integer(TRUE)
as.integer(FALSE)


#Challenge: Can you use R to calculate 10 to the power of 100? What does that notation appear to mean? 
10^100

#Challenge: Convert "5.001" to a double, and then an integer. What happens?
as.integer((as.double("5.001")))


#Challenge: See if 1 is greater than 1.5, and separately if 2 is greater than 1.5, and multiply both answers?
#What do you think is happening? 
(1 > 1.5)*(2 > 1.5)

#Challenge: what datatypes shown here can you not convert between?
as.integer("A")

#Make sure to discuss the global environment GUI on right

#################################################################################
####################### Variable Assignment #####################################
#################################################################################


# If I want to assign a value to a variable name to use for later, 
# such as my_fav_num <- 7 (think of it as a little arrow), I can assign it to a variable
my_fav_num <- 7
my_fav_num






#what if I change my mind? I can also use the "=" operator to assign a value to a variable name 
my_fav_num = 9
my_fav_num


#Can assign more complex operations

approx_pi = 22/7
approx_pi

my_product = my_fav_num*approx_pi



#Can create functions that allow you to do operations
#f(x) = y



#fun_name = function(variables_of_choice_that_you_input){
#function material 
#return variable
#}
add_2_times_2<-function(num){
  return_variable = num+2
  return_variable = return_variable*2
  return(return_variable)
}

return_variable

#inputting wrong datatype
w = "2"
add_2_times_2(w)
w = as.numeric(w)
w

#using parameter values
add_2_times_2(num = w)
add_2_times_2(w)

as.numeric(w)
typeof(w)



#functions don't have to have inputs
say_hello<-function(){
  print("hello")
}

say_hello()


#having multiple inputs
add_two_numbers<-function(num1, num2){
  my_solution = num1+num2
  return(my_solution) #note R can only return one output
}

two_plus_two = add_two_numbers(2,2)
two_plus_two

#challenge: write a function that take in a number x and returns x^2 + 3, as a character
myFunction <- function(x){
  result = (x^2)+3
  return(as.character(result))
}

#challenge: write a function which takes in value x and uses paste to return using paste() 
#"Figure x"
myFunction2 <-function(x){
  result = paste("Figure", x)
  return(result)
}

#challenge: write a functions that take in integers x1 and x2 and returns
#the euclidean distance between the two points
myFunction3 = function(x1,x2){
  return((x1^2 + x2^2)^0.5)
}
myFunction3(3,4)


##########################################################
######################Vectors############################
#########################################################
# Assigning multiple entries to a variable using the c() function which stands for concatenate
Income = c(2000, 5000, 3000, 5500, 1000)
Income

Exp = c(2100, 4500, 3000, 5000, 1500)
Exp
length(Exp)

#operations done component wise
Savings = Income - Exp 
Savings

2*Savings

#concatenating, column binding, row binding
c(Income,Savings)
cbind(Income,Savings)
rbind(Income,Savings)


#Can also do sequences of numbers in two different ways: 
1:10
seq(1,10)
seq(1,10, by = 3)

# Create a group variable 
Group = c("M", "F", "F", "M", "F")

Group

#Creating Lists of Numbers using the rep function
#Can explore documentation of a function using the ? command. For example, 
?rep
??rep
rep(x = 1,times = 10)

one_two_three<-c(1,2,3)

#base r functions
rep(x = one_two_three, times = 3)

rep(x = one_two_three, each = 3)

rep(x  = c(1,2), times = c(2,3))

#Challenge: Can you create 1,2,2,3,3,3,4,4,4,4 using the rep function? 
rep(c(1,2,3,4), times = c(1,2,3,4))

#Indexing lists
#Create vector of numbers from 10 to 20
my_vec<-10:20
my_vec
length(my_vec)

my_vec[1]

#We note that R indexing starts at 1
my_vec[1:5] #gathers which indexes of vector
my_vec[7]
my_vec[-1] #everything but the first element
my_vec[-3] #everything but the third element


#challenge: Access numbers 1,2,3 from challenge_vec using indexing
challange_vec<-c(rep(0,3),c(1,2,3),rep(0,3))
print(challange_vec)

challange_vec[c(4,5,6)] # we can use this

challange_vec[4:6] # we can use this also



######################################################
################### Summary Statistics
######################################################

#sometimes we want to get summary statistics of our data
normal = rnorm(100,mean = 10, sd = 2)
mean(normal)

median(normal)

max(normal)
min(normal)

summary(normal)

quantile(normal,c(0.025,0.975))


#light plotting options
plot(normal)

hist(normal)

boxplot(normal)


################################################################################
################################# Data Frame ###################################
################################################################################

# Creating a data frame 
mydata = data.frame(Income, Exp)
mydata


# Add a variable to the data set
mydata1 = cbind(mydata, Group)
mydata1

# Add more variable
mydata2 = data.frame(mydata1, Savings)
mydata2


names(mydata2)

names(mydata2) = c("name1","name2","name3","name4") #can rename your dataframe columns!

names(mydata2) = c("Income","Exp","Group","Savings")


mydata2
# Access any particular variable in the data frame
mydata2$Income

#Access single observations dataframe[row,column]
mydata2


mydata2[1,2] #first row, second column
mydata2[2,1] #second row, first column

mydata2[1,]  #observation 1 (first row, all columns)
mydata2[,1]  #column 1



mydata2[,2:3]            #Accessing columns 2-3 and all rows

mydata2[-1,] #everything but row 1

#Challenge: Create a dataframe using myvec1 and myvec2 and myvec 3. 
myvec1 = c(5,6,7)
myvec2 = c(8,9,10)
myvec3 = c(11,12,13)

mydf = data.frame(myvec1, myvec2)
mydf<-cbind(mydf, myvec3)

#Challenge: Get only odd indexed rows from mydata2
mydata2[seq(1,5,by=2),]

#Challenge: Create a function that tells me if the very first element of a dataframe is
#equal to 0. Test it on data2
firstElement <-function(data){
  return(data[1,1]==0)
}
firstElement(mydata2)

#Challenge: Create a function that takes in a vector x, and
#returns a vector of 1s and 0s indicating if each element is greater than 0
#Test this on the Savings column
greater1 <- function(x){
  return(x>0)
}
greater1(Savings)


#can also perform conditional indexing using boolean statements!
#say I want my data2 but only rows where the group is F. 

#This is in my opinion one of the most powerful R tools

mydata2$Group == "F"
mydata2[mydata2$Group == "F",]



#Great! Try on your own, get all rows in mydata2 where savings is less than 0. 
mydata2[mydata2$Savings<0,]


#can also use the following for the same result
subset(mydata2, Savings<0)


#can reassign values in your dataframe
#say I mislabeled savings to be negative, but want it to have a floor at 0

mydata2$Savings[mydata2$Savings<0] = 0
mydata2


mydata2[mydata2$Group == "F",]$Group = "Female"
mydata2[mydata2$Group == "M",]$Group = "Male"
mydata2


####################################################
##################### Saving and reading Data and ##
####################################################


#Getting current directory
getwd()

#Saving data 
setwd("/Users/zafranarif/Desktop/Git/R_CISER_Workshop")

#writing as csv
?write.csv
write.csv(mydata2, "workshop_economic_data.csv")

#reading as csv
?read.csv
imported_data = read.csv("workshop_economic_data.csv")
imported_data


#What if I want to turn it directly into an excel file? 
#to do this, I must install a package


#Getting packages
#only have to install packages once!!!

install.packages("openxlsx")
library(openxlsx)
write.xlsx(mydata2, 'myname.xlsx')

newdata = read.xlsx("myname.xlsx")
newdata

#also show the GUI way to do it 

#install.packages("dplyr")
#always have to use library
library(dplyr)

#additional material:
install.packages("swirl")
library(swirl)




####################################################
##################### if statements and for loops ##
####################################################


#if(TRUE or False Statement){
#code
#}

#elseif(){
#code
#}

#else{
#code
#}


#only executes code if condition is met, otherwise will do else
e = 4
if (e == 3) {
  print("e is three")
} else {
  print("e is not three")
}


my_nums = c(1,2,3,4,5)
twotimes = F

if(twotimes == TRUE){
  print(my_nums*2)
}else{
  print("no two times :(")
}



#for loops 
1:3
for(i in 1:3){
  print(i)
}


#using for loops for concatenation
my_nums = c()
for(i in 1:3){
  my_nums = c(my_nums,i)
}
my_nums

#automating creation of figure names
figure_names = c()
for(i in names(mydata2)){
  figure_names = c(figure_names,paste("Figure",i))
}
figure_names



#can use breaks conditions to stop the loop
for(i in Income){
  print(i)
  
  if(i == 5000){
    break
  }
}

#can change the name of iterating variable
for(row in 1:3){
  print(mydata2[row,])
}



#challenge: use a for loop to add numbers 1 through 10000 and assign to a variable


#challenge: use a for loop to create a dataframe which contains values
#1 1 1 1 1 1
#2 2 2 2 2 2
#3 3 3 3 3 3 



#What are some problems that people have in their research?


#Missing values
#is.na




#More dataframes for practice
data(road)
road



#Debugging 

generate_plot_n_normals = function(mean, var, n){
  par(mfrow = c(2,2))
  for(i in 1:n){
    norms = rnorm(n= n, mean = mean, sd = var^0.5)
    hist(norms, main = paste("norms",i, sep = n))
  }
  print(as.numeric("g")) #may produce a warning, but is it an error?
}
generate_plot_n_normals(mean = 2,var = 1, n = 4)

debugonce(generate_plot_n_normals)

generate_plot_n_normals(mean = 2,var = 1, n = 4)


