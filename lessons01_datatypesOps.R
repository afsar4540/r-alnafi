
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



