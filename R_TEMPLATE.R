# R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet" 
#R-STUDIO
# CTRL + OPTION + DOWN = Switch to diff R script
# CMD + OPTION + DOWN = COPY PREVIOUS LINE 
# CTRL + 1 = MOVE FOCUS TO SOURCE EDITOR
# CTRL + 2 = MOVE FOCUS TO CONSOLE 
# CTRL + 2 = MOVE FOCUS TO HELP
# CTRL + L = CLEARS CONSOLE
# CMD + ENTER = RUNS
# CTRL + C = TERMINATE AN INFINITE LOOP
# short for assgnment oper = Option + -
# "Google's R Style Guide"
browseURL("http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml")
# variable.name  , FunctionName  , kconstantName
class(variable.name)  # Check data type of varb
# Print built in DS
print(mtcars)
# R is case sensative
# Multi-line comment. highlight lines + shift+ctrl+c
# Prints #'s 1-250 across several lines
1:250
print("Hello World")
# VARIABLES are vectors
# Put the #'s 1-5 in the varb x
x <- 1:5
print(x)
y <- c(6,7,8,9,10)
# Multiple var assgnm. All 3 varb's assigned 3.
a <- b <- c  <- 3
# VECTOR MATH
x
y
x + y # adds corresponding elements in x and y
x*2
# CLEAN UP
rm(x) # Remove an obj from workspace
rm(a,b)  # Remove more than 1 obj
rm(list = ls())  # Clear entire workspace
ls()  # list all obj's in workspace
# Ex01_04
# Installing & Managing Packages
# Q4, Pkgs. Installed pkgs appear, checked are loaded.
# See current packages
library()  # Brings up editor list of installed pakgs
# install.packages("ggplot2")  # TO INSTALL
# Use scripts to install b/c when share w/others they can replicate your work.
library("ggplot2")  # To make pkg available. Box gets checked 
library(help = "ggplot2")  # Brings up doc in editor window
# UPDATE PKGS
update.packages()  # check for updates; do periodically

# VIGNETTES I.E. EXAMPLES
vignette(package = 'grid')  # Brings up list of vignettes in editor window.
browseVignettes(package = "grid")  # Open web page w/hyperlinks for vignette PDF's 

# Ex01_05
# Using R's built-in datasets
# Complete list of datasets
library(help = 'datasets')
# To see a list of the available datasets
data()
# For information on a specifc ds
?airmiles
?USPersonalExpenditure
# To load a ds from pkg into workspace -- shows in ENV
data(airmiles)  # listed as 'ts' for 'time series'
# To see the contents of ds
# (Don't actually need to load for this)
airmiles
USPersonalExpenditure
str(USPersonalExpenditure)
# To see its "structure"
str(airmiles)
# indicates how many 'first few' el's displayed from each vec
str(USPersonalExpenditure, vec.len = 2)
# Now a dataset that has rows & columns
?anscombe
data(anscombe)  # load anscombe data into ENV -> Global env
rm(list = ls())  # remove 2 obj's loaded into workplace
ls()
 x<- c(1,2,3)
ls()
data(anscombe)
rm(list = ls())
ls()
# Ex01_06
# Entering data manually
# Create seq data
x1 <- 0:10  # Assigns number 0 through 10 to x1. 11 values
x2<- 10:0 # Assigns umber 10 through 0 to x2.
x3 <- seq(10) # Counts from 1 to 10. By default seq starts at 1!!
?seq
anscombe
ls()
data()
x4  <- seq(30, 0, by = -3)  # Counts down by 3
x4
x4m  <- seq(30,1, by = -3)
x4m
# Manually enter data
x5  <-  c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8) #  Concatenate
x5
rm(list = ls())
# In Finder: CMD + , --> Opens Settings
# Ex01_07
#Importing Data
# Finder get Quickview by highlighting file & pressing space
# Header = TRUE  # Varb names appear as first row. 
# read.table use for data that has rows & colmns.
trends.txt  <-  read.table("~/Desktop/R/GoogleTrends.txt", header = TRUE)
# This works w/missing data by specifying the seperator: \t is for tabs, sep = "," for comma delim. R converts missing to NA.
trends.txt  <- read.table("~/Desktop/R/GoogleTrends.txt", header = TRUE, sep = "\t")
trends.txt
View(trends.txt)
# CSV FILES (Universal format)
# Don't have to specify delimeters for missing data
trends.csv  <- read.csv("~/Desktop/R/GoogleTrends.csv", header = TRUE)
trends.csv
rm(list = ls())
ls()
# Ex01_08
# Converting tabular data to row data
# Load data
data(UCBAdmissions)
# , , Indicates collapsing across gender and across adm or rej
UCBAdmissions
# table w/ 3 factors or dimensions
str(UCBAdmissions)
# May want marginal freq which are regardless of dept how many men applied and women applied. 
# Get mariginal freq from original table
# Want to see Varb 1
margin.table(UCBAdmissions, 1)  # Admit
# We know Varb 1 is Admit from the str function. UCB is 3D
str(UCBAdmissions)
margin.table(UCBAdmissions, 2)  # Gender
margin.table(UCBAdmissions, 3)  # Dept - how many people appl to each dept
margin.table(UCBAdmissions)  # Total
# Save marginals as new table 
admit.dept  <-margin.table(UCBAdmissions, 3)  # Dept
admit.dept
# It's 1Dim
str(admit.dept)
barplot(admit.dept)
UCBAdmissions
# Call the obj admit.dept to get frequencies
admit.dept
prop.table(admit.dept)  # Show as proportions
?round
round(prop.table(admit.dept), 2)  # Show as propr w/2 digits
round(prop.table(admit.dept), 2) * 100
# Coerces to dataframe. Take from tabular format & lay it out flat
admit1  <- as.data.frame.table(UCBAdmissions)  
admit2  <- lapply(admit1, function(x)rep(x, admit1$Freq))
# A useful way to find f's that are somewhere in some contributed pkg on CRAN:
install.packages("sos")  # only needed once per R installation
library("sos")
findFn('lapply')
# So load the plyr pkg
library(plyr)
admit2  <- lapply(admit1, function(x)rep(x, admit1$Freq))
admit2
admit3  <- as.data.frame(admit2)  # Converts from list back to df
admit3
admit4  <- admit3[,-4]  # Take all rows & remove 4th col
# If have ds in tabular format but want to convert to df of rows & colms for use in standard analysis. Done above in sev steps. Below in 1 step. Will have to do this w/most built in ds.
# Resuse code by changing ds name in 2 places & change index to last col.
data(UCBAdmissions)
admit.rows  <- as.data.frame(lapply(as.data.frame.table(UCBAdmissions), function(x)rep(x, as.data.frame.table(UCBAdmissions)$Freq)))[,-4]
admit.rows[1:10, ]  # View first 10 rows of data

# << MATRICES >>
# Syntax
mymatrix <- matrix(vector, nrow = num_of_rows, ncol = num_of_col, byrow = logical_value, dimnames = list(rnames, cnames))
# above vector = c(v1,v2,v3) OR vector = (1:9)
# Create 2 by 2 matrix Croatian
cells <- c(1, 26, 24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = T, dimnames = list(rnames, cnames))
# Create 3 by 3 matrix Croatian ext
cells3 <- c(1,2,3,4,5,6)
rnames <- c("R1", "R2", "R3")
cnames <- c("C1", "C2", "C3")
mymatrix2 <- matrix(cells3, nrow =3, ncol=3, byrow=T, dimnames = list(rnames, cnames))

# << DATA FRAMES >>
# < CREATING A DF >
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
planets_df <- data.frame(planets, type, diameter, rotation, rings)
# SELECT AN ENTIRE COL -- CREATE 'rings_vector'
rings_vector <- planets_df$rings
# Select the information on planets with rings: ie all col info on pl's w/ring
planets_with_rings_df <- planets_df[rings_vector,]
# Subset function
subset(my_data_frame, subset = some_condition)
# Ex
# << The apply family >>
# Syntax
lapply(dset, fname) Or lapply(dset, fname, farg2)  

# OIL - more generic 
# Syntax: lapply(dset, fname) Or lapply(dset, fname, farg2)
oil_prices <- list(2.37, 2.49, 2.18, 2.22, 2.47, 2.32)
multiply <- function(x, factor) {
  x * factor
}
times3 <- lapply(oil_prices, multiply, factor = 3) 
unlist(times3)
#----------------------------------------------------------------
# < lapply >
# lapply = list apply the f. Avoids the for loop.
x <- c(1,4)
for (var in x) {
  function(x) { 3 * x}
  print (3 * x)
}
#----------------------------------------------------------------
# return()
triple <- function(x) {
  y <- 3 * x
  return(y)
}
triple(6)
#----------------------------------------------------------------
# return()  guard against 'Inf' by adding an if stmt
math_magic <- function(a, b = 1) {
  if (b == 0) {
    return(0)
  }
  a * b + a/b  # not reached if b = 0.
}
math_magic(4,0)
# have our f return 0 when b arg is 0.

#----------------------------------------------------------------
