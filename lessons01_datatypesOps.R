
### Lesson 5.1 ###

#Objects are basically of five types also called atomic
#01 character (aA to zZ) i.e

  a <- ("ali")
  print (a)

#02 numeric (real numbers) (also decimal numbs)
#03 integer (without decimal)
#04 complex (having imaginary num i)
#05 logical (true/false)

#most basic object is "vector" which have objects of same class i.e
  vect_1 <- c(1,2,3,4,5,6) #c() used to store vectors objects
  print (vect_1)
  
  vect_2 <- c("a,b,c,d,e,f") # characters as a vector
  vect_2  #aUTO PRINT
  
  die <- 1:6
  print (die) # 1 2 3 4 5 6
  class (die)  #integer as explained
# die is object as vector bcz it contains same class integers
# whether "list" is having different objects

#nums in R treated as a numeric num (ie double precision or real nums)

#if needed we can define number as an integer,we apply "L" as suffix as
    x <- 5L
  class (x)

  ### Lesson 5.2 ###
# An attribute is a piece of information that you can attach to an atomic vector
#  (or any R  object) some R functions will check for specific attributes as "metadata"
# otherwise The attribute won’t affect any of the values in the object.

attributes(die)  #NULL bcz it has no attributes

#Names The most common attributes to give an atomic vector are names, 
#dimensions (dim), and classes  
## assigning names to die num (vector assigned above)
names(die) <- c("one","two","three","four","five","six")
names(die) #now die has name attributes

die # R will display names on above elements of vector when displayed 

names(die) <-NULL #to remove names from vector assign to NULL as
die
  #Dim You can transform an atomic vector into an n-dimensional array by giving
#it a dimensions attribute with dim as matrix array

dim(die) <- c(2,3)
die #displaying die as 2 x 3 matrix array
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

#Matrices store values in a two-dimensional array, 
#just like a matrix from linear algebra.
m <- matrix(die, nrow = 2)
m #will display
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6

#you can fill the matrix row by row if you include the argument byrow = TRUE:
m <- matrix(die, nrow = 2 ,byrow = TRUE)
m #will display
#       [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6

## summery R attributes may have names, dimnames , class, dimensions(matrices arrays),
## or length , user defined metadata

# : operator used for making series as 
s <- 1:20
s

### Lesson 5.3 ###
#creating vectors
vcharacter <- c("This","is", "a","character","vector") #character vector
vlogical <- c(TRUE,FALSE) #Logical
vlogical1 <- c(T,F) #Logical
vnumaric <- c(1,2,3,4,5) #numaric
vinteger <- c(1:10) #integer
vcomplex <- c(1+0i , 2+4i) #complex

#using vector() function but we donot use it so we use c function

### EXplicit Coercion (conversion of elements) by as.(class name)
#it will not change the class of vector
# we make Exp as a vector of integer elements
expli <- c(0:6)
class(expli) #integer

as.numeric(expli)
# [1] 0 1 2 3 4 5 6

as.logical(expli)
#[1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

as.character(expli)
#[1] "0" "1" "2" "3" "4" "5" "6"

as.complex(expli)
#[1] 0+0i 1+0i 2+0i 3+0i 4+0i 5+0i 6+0i

###coercion examples
coe1 <- c("a","b","c")

as.numeric(coe1)  #compiler dosent know the conversion value of abc so
#[1] NA NA NA
#Warning message:
#  NAs introduced by coercion 

as.logical(coe1) #compiler dosent know the conversion value of abc so
#[1] NA NA NA

as.complex(coe1)#compiler dosent know the conversion value of abc so
#[1] NA NA NA
#Warning message:
#  NAs introduced by coercion

### Lesson 5.4 ###
#Matrics are vectors with dim attributes like
mv <- matrix(nrow = 2, ncol = 3)
mv
#      [,1] [,2] [,3] 
#[1,]   NA   NA   NA    #NA means no data elements
#[2,]   NA   NA   NA    #bcz we created an empty matrix

dim(mv)
#[1] 2 3 # showing 2 rows and three columns

attributes(mv)  #shows attribute of available (dim)
#$dim
#[1] 2 3

#now we will assign values to our "mv" matrix
mv <- matrix(7:12, nrow = 2, ncol = 3)
mv
#       [,1] [,2] [,3]  by default values assigned by column wise
#[1,]    7    9   11
#[2,]    8   10   12

#we can assign values bby row wise by adding "byrow=true"
mv <- matrix(7:12, nrow = 2 ,ncol = 3, byrow = TRUE)
mv
#      [,1] [,2] [,3]
#[1,]    7    8    9
#[2,]   10   11   12

#we can change rows and colums by dim fumction
dim(mv) <- c(3,2)
mv
#     [,1] [,2]  #converted from 2 to 3 rows
#[1,]    7   11
#[2,]   10    9
#[3,]    8   12

#we can also creat matrix from vector by applynig dim functin to vector

vm <- 1:10
vm
#[1]  1  2  3  4  5  6  7  8  9 10
#now we convert vm into matrix by dim()
dim(vm) <- c(2,5) #assigned in 2 rows 5 columns
vm
#       [,1] [,2] [,3] [,4] [,5] #now it vm changed into matrix
#[1,]    1    3    5    7    9
#2,]    2    4    6    8   10


### Lesson 5.5 ###
#matrix can be made by binding of rows and colomns (size must be same)
rx <- 1:3
ry <- 10:12

#binding by rows rx ,ry
rbind(rx , ry)
#    [,1] [,2] [,3]
#rx    1    2    3
#ry   10   11   12

#binding by column rx ,ry
cbind(rx , ry)
#      rx ry
#[1,]  1 10
#[2,]  2 11
#[3,]  3 12

## List ##
# List are special vectors can store all class types of vectors elements

l1 <- list(1 , "a" , TRUE, 2:3 , 1 + 2i )
l1 #stored all classes of data in one list

#[[1]]
#[1] 1

#[[2]]
#[1] "a"

#[[3]]
#[1] TRUE

#[[4]]
#[1] 2 3

#[[5]]
#[1] 1+2i

### Lesson 5.6 ###
#factor using for catogrical data (odrdring unordering), use lables better on it
#1lm liner model and glm generl model and generlize liner model uses factors

xf <- factor(c("yes","yes","yes","no","no"))
xf
#[1] yes yes yes no  no 
#Levels: no yes             #shows levels no and yes

table(xf)  #will show no count of each levels
#no yes 
#2   3 

unclass(xf)           #shows 2 for yes,  1 for no
#[1] 2 2 2 1 1        #backend values are numaric assigned by R compiler
#attr(,"levels")
#[1] "no"  "yes"

xcity <- factor(c("khi","hbd","skr","khi","khi"))
xcity
#[1] khi hbd skr khi khi
#Levels: hbd khi skr

unclass(xcity)
#[1] 2 1 3 2 2     #backend (1hbd) (2khi) (3skr) assending wise
#attr(,"levels")
#[1] "hbd" "khi" "skr"  

typeof(xcity)   #backend stored as integer
#[1] "integer"

#we can set the levels (can order as our requirments) by levels arguments

xcity <- factor(c("khi","hbd","skr","khi","khi"), levels = c("khi","hbd","skr"))
unclass(xcity)
#[1] 1 2 3 1 1            #now khi is orderly stored in 1
#attr(,"levels")
#[1] "khi" "hbd" "skr"

