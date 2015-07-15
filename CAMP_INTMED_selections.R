# << Topic : Conditionals & Control Flow >>
# Control-Flow Construction program.Uses relational & logical operators and control constructs to generate a 'social media score' based on linkedin and facebook values.
# < Take Control >

# Instruc:
# Write a complete control-flow construct with the following behavior:
# If both li and fb are at least 15, set sms equal to double the sum of li and fb.
# If both li and fb are below 10 (exclusive), set sms equal to half the sum of li and fb.
# In all other cases, set sms equal to the sum of li and fb.
# Finally, print the resulting sms variable to the console.

# CODE
# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms = 2 * sum(li, fb)
} else if (li < 10 & fb < 10) {
  sms = sum(li, fb)/2
} else {
  sms = sum(li, fb)
}
print (sms)
#-----------------------------------------------------------------------------
# << Topic: LOOPS >>
# Looping over a Matrix program. I employed nested for loop to loop through both the rows and columns of matrix. Printing the respective row and column number for each element of the matrix as well as the value of the element.
# Instruc:
# Use a for loop inside a for loop for the ttt matrix:
#   Use loop indexes: i to loop over the rows, j to loop over the columns.
# The outer loop should loop over the rows (use nrow())
# The inner loop should loop over the columns (use ncol())
# Inside the inner loop, make use of print() and paste() to print information in the following format: "On row i and column j the board contains x", where x is the value on that position.
# CODE
# The tic-tac-toe matrix has already been defined for you
ttt <- matrix(c("O", NA, "X", "NA", "O", NA, "X", "O", "X"), nrow = 3, ncol = 3)

# define the double for loop
# PRINTS out ELEMENTWISE pairs of matrix by row

for(i in 1: nrow(ttt)) {
  for(j in 1: ncol(ttt)) {
    x <- ttt[i,j]
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
    #print(paste("On row,  and column,  the board contains ", i,j, x))
  }
}

}

#-----------------------------------------------------------------------------
# << Topic: Functions >>
# Create function interpret_all() which will employ the function I previously made interpret().
# Instruc:
# Create a new function, interpret_all(), with the following behavior:
# It takes two arguments: a vector, consisting of the data to interpret, and a logical value, that specifies whether or not to return the sum of views on popular days. This logical value is TRUE by default.
# The function iterates over the entire input vector, and calls the interpret() function for each element. At the same time, the sum of views on popular days is calculated incrementally.
# Finally, depending on the optional logical argument, interpret_all() returns this sum of views on popular days or simply NULL.
# Call this newly defined function on both linkedin and facebook.

# CODE
# CORRECT SOL
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# interpret won't be executed bc it wasn't called. 
# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if(num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# R knows to get f arg 'views' from called v: ie lk or fb.
# f_all gets views from either lk or fb, gets 2nd arg from f 'interpret'. Can mod 'interpret' to make _all have only its 2nd arg, by changing 'interp' first if to return(1).
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  for(v in views) {
    # increment count var by calling f interpret which returns the hit count for 1 day. 
    count <- count + interpret(v)  # if num_views < 15 --> count <- count + 0.
  }
  if(return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}
# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)
#-----------------------------------------------------------------------------
# << Topic:  The apply family >>
# < Use lapply w/your own f >
# Concept: Let's write some code to select the names and the birth years separately.
# Instruc:
# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
v <- unlist(split_low)
class(v)
# Write function select_first()
# Write a function, select_first(), that takes a VECTOR as input and returns the first element of this vector.
select_first <- function(v) {
  return(v[1])
}

# Apply select_first() over split_low: names
# Apply the select_first() function over the split_low list using lapply() and assign the result to a new variable 'names'.
names <- lapply(split_low, select_first)

# Write function select_second()
# Next, write a function select_second() that does the exact same thing for the second element of an inputted vector.
select_second <- function(v) {
  return(v[2])
}

# Apply select_second() over split_low: years
# Finally, apply the select_second() function over split_low and assign the output to the variable years
years <- lapply(split_low, select_second) 

#-----------------------------------------------------------------------------
# << Topic: Utilities >>
# sub & gsub
# Find and replace the desired character.
# Instruc: With the advanced regular expression "@.*\\.edu$", use sub() to replace the match with "datacamp.edu". Since there will only be one match per character string, gsub() is not necessary here. Inspect the resulting output.
# Oops, the result is not as expected. Because @ is part of the pattern, it is also replaced when it is matched. In the second attempt, change the replacement such that also the @ gets replaced.


# Code
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org", 
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu (attempt 1)
sub(pattern = "@.*\\.edu$", "datacamp.edu", x = emails)

# Use sub() to convert the email domains to datacamp.edu (attempt 2)
sub(pattern = "@.*\\.edu$", "@datacamp.edu", x = emails)
#-----------------------------------------------------------------------