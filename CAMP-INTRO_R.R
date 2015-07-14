# STAVROS RAMMOS - my work for DataCamp
# Intro to R
# U can give names to the el's of a vec w/names() f.
some_vector  <- c("Johnny", "Poker Player")
names(some_vector)  <- c("Name", "Profession")
names(some_vector)  
some_vector

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Create the variable 'days_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#Assign the names of the day to 'roulette_vector' and 'poker_vector'
names(poker_vector) <- days_vector  
names(roulette_vector) <- days_vector

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
#names f get's 'names' from days_vector
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

#------------------------------
# < Cal total winnind (2) >
# Concept: Whats is overall profit/loss per day of week
# Code
# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Assign to total_daily how much u won or lost on each day in total(p +r)
total_daily <- poker_vector + roulette_vector
poker_vector
roulette_vector

# Calculate total gains for poker and roulette (individually)
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)
# EXR: test if your total gains in poker are higher than for roulette.Assign result of comparison to 'answer'.
if (total_poker > total_roulette) answer <- total_poker
# if want result of comparison: answer <- True
answer
#-----------------------------------
# VECTOR SELECTION; THE GOOD TIMES
# Instruc:Assign the poker results of Wed to 'poker_wednesday'
poker_vector[3]
#-------------------------------------
# VECTOR SELECTION: THE GOOD TIMES (2)
# Select the 1st & 5th el of poker_vector
poker_vector[c(1,5)]
# Instruc: Assign results of Tu, W, TR to 'poker_midweek'
poker_vector[c(2,3,4)]
#------------------------------
# VS :GT (3)
#Instruc: assign reslts to roulette_selection_vector the results from Tuesday up to Friday by making use of :
roulette_selection_vector <- roulette_vector[(2:5)]
#------------------------------
# VS (4) USING NAMES
poker_vector[c("Monday", "Tuesday"]
# Calculate your average poker gains during the first three days of the week by selecting these elements with the help of the names. Assign this value to average_midweek_gain. You can use the mean() function to get the average of a vector.

average_midweek_gain <- poker_vector[c("Monday", "Tuesday", "Wednesday")] 
#-----------------------------
# SELECTION BY COMPARISON
# Find the days on which u had a pos poker return 
# Concept: c(4,5,6) > 5
selection_vector  <- poker_vector > 0
---------------------------------------
# < SELECTION BY COMPARISON (2) >
# CONCEPT: In prev EXR code returned days on which u had pos return. Now you also want to know amount won on those days.
# Instruc: Assign the amounts that you won on the profitable days to the variable poker_winning_days
# Select from poker_vector these days
poker_winning_days <- poker_vector[poker_vector > 0] # Key line of code
# CODE - entire  
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
roulette_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0
poker_vector
selection_vector  # T/F
# Select from poker_vector these days
# This works b/c R selects only those el's where selection_vector is TRUE.
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days
#----------------------------------------------
# << Datacamp Ch 3: Matrices >>
# matrices: 2D(rows x col) coll of el's of same data type(numeric, char, logi)
  matrix (1:9, byrow = TRUE, nrow = 3)  # Matrix filled byrow, 3 rows.
# To fill by cols: byrow = FALSE

#------------------------------------------------
# < ANALYZING MATRICES, YOU SHALL >
#  Box office Star Wars: In Millions! 
# The first element of each movie v is: US, the second element: Non-US 
# Instruc: Construct a matrix with one row for each movie (thus 3 rows). The first column is for the US box office revenue, and the second column for the non-US box office revenue. Name the matrix star_wars_matrix

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
# x<- print (c(new_hope,empire_strikes,return_jedi)) # NOT a matrix
x
# Add your code below to Construct matrix
# Syntax
mymatrix <- matrix(vector, nrow = num_of_rows, ncol = num_of_col, byrow = logical_value, dimnames = list(char_v_rownames, char_v_colnames))

star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow=T, nrow = 3)
star_wars_matrix
# Syntax for above
# star_wars_matrix <- matrix(c(v1,v2,v3), same, same)
#  ---------------------------------
# < NAMING A MATRIX >
# Add your code here such that rows and columns of star_wars_matrix have a name!
# Syntax: 
rownames(my_matrix) <- row_names_vector
colnames(my_matrix) <- col_names_vector

# Instruc: 1) Give the columns of star_wars_matrix the names "US" and "non-US", respectively. 2) Give the rows of the matrix star_wars_matrix the names of the three movies. In case you are not a fan ;-), the movie names are: "A New Hope", "The Empire Strikes Back" and "Return of the Jedi".
# CODE
# Box office Star Wars: In Millions (!) 
# First element: US, Second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)


# Add your code here such that rows and columns of star_wars_matrix have a name!
# Syntax
#mymatrix <- matrix(vector, nrow = num_of_rows, ncol = num_of_col, byrow = #logical_value, dimnames = list(char_v_rownames, char_v_colnames))

rnames <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
cnames <- c("US", "non-US")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow=T, nrow =3, dimnames=list(rnames, cnames))




# -------------------------
cells <-  (1:6)
cells
mymatrix  <- matrix(v, nrow = 3, byrow = TRUE)
mymatrix
print(rowSums(mymatrix))
#----------------------------------
# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Your code here
worldwide_vector <- rowSums(star_wars_matrix)
#------------------------------
# Adding a col for the Worldwide box office
# Box office Star Wars: In Millions (!) 
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix
#---------------------------
# Adding a row
# Matrix that contains the first trilogy box office
star_wars_matrix  

# Matrix that contains the second trilogy box office
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
#-----------------------------
# Selection of Matrix el's
# Matrices are 2D, so use ',' to seperate what to select from rows from what u want to select from col's.
# Ex's: my_matrix[1,2] = sel from 1st row the 2nd el.
my_matrix <- matrix(1:20, nrow=5, ncol=4)
my_matrix[1:3,2:4] # = sel rows 1,2,3 and cols 2,3,4.
# my_matrix[,1] = sel all el's of 1st col.
# my_matrix[1,] = sel all el's of 1st row.
# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Print the star_wars_matrix to the console
star_wars_matrix 

# Average non-US revenue per movie
non_us_all  <- mean(star_wars_matrix[,2])
non_us_all  
# Average non-US revenue of first two movies
non_us_some <- mean(star_wars_matrix[1:2,2])
#------------------------
# A little arithmetic w/matrices
# Box office Star Wars: In Millions (!) 
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Estimation of visitors
visitors <- star_wars_matrix/5
# Print the estimate to the console
visitors
#-------------------------------
# A little arithmetic w/matrices(2)
# # Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

# Estimated number of visitors
visitors <- star_wars_matrix/ticket_prices_matrix
  
# Average number of US visitors
average_us_visitors <- mean(visitors[,1]) 
  
# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[,2])
#-----------------------------------
# << CH 4: FACTORS >>
# What's a factor & why should you use it
# Factors are a data type that stores categorical data
# A categorical var can belong to a limited # of categories
#----------------
# What's a factor & why should you use it (2)
factor()  # f to create factors
# S1- Create a vector that contains all the OBSERVATIONS belonging to a limited # of categories.

gender_vector <- c("Male", "Female", "Female", "Male", "Male")
# Define factor_gender_vector using 'factor()'
factor_gender_vector <- factor(gender_vector)
#---------------------------------
# What's a factor & why should you use it (3)
# 2 types of cat v's: nominal & ordinal
# A nominal v is a cat v w/o an implied order.
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
#--------------------------
# Factor Levels
levels()  # change the name of the factor levels
levels(factor_vector) <- c("name1", "name2", ...)
# Program
survey_vector <- c("M", "F", "F", "M", "M")

# Encode survey_vector as a factor
factor_survey_vector <- factor(survey_vector)

# Specify the levels of 'factor_survey_vector'
levels(factor_survey_vector) <- c("Female" , "Male")

factor_survey_vector
#------------------------------
# Summarizing a factor
# summary(some_variable)
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Type your code here for 'survey_vector'
summary(survey_vector)

# Type your code here for 'factor_survey_vector'
summary(factor_survey_vector)
#---------------------------------
# Battle of the sexes
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
levels(factor_survey_vector)
# Male
factor_survey_vector[1] 
# Female
factor_survey_vector[2] 
# Battle of the sexes: Male 'larger' than female?
factor_survey_vector[1] > factor_survey_vector[2] 
#--------------------
# Ordered Factors
# Assign speed_vector knowing that A1=fast,A2=S=A3, A4=F, A5=UF.
# Create 'speed_vector'
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
#-----------------------------
# Ordered Factors (2)
# Convert speed_v to ordinal factor b/c has natural ordering.
# To create an ordered factor have to add 2 add arg's. Ascending order.
factor(some_vector, ordered = TRUE, levels = c("Level_1", "Level_2", "Level_3" ))
# EXR
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast") 

# Add your code below
factor_speed_vector <-  factor(speed_vector, ordered=TRUE, levels=c("Slow", "Fast", "Ultra-fast"))
  
# Print
factor_speed_vector

# R prints automagically in the right order
summary(factor_speed_vector) 
#------------------------------
# Comparing ordered factors
# Concept: factor_speed_v is now ordered enables us to compare diff el's.
# Instruc: 
# S1-Use '>' operator to test whether analyst 2 is faster than analyst 5 
# S2- Assign Boolean data type:TRUE/FALSE to v compare_them
#EXR
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

# Your code below
compare_them <- factor_speed_vector[2] > factor_speed_vector[5]
  
# Is data analyst 2 faster than data analyst 5?
compare_them
#------------------------------------
# << CH 5: DATA FRAMES  >>
# < What's a data frame? >
# A DF has the vars of a DS as col's & observ's as rows.
# Use when doing market research survey where output is a DS of diff data types. "Married?"-Boolean, "Age?"- Numeric, "Opinion on Prod"-Charac
# EXR
mtcars # Built-in R data set stored in a data frame
#---------------------------------
# < Quick, have a look at your DS >
head(object) # Lists the first part of an obj + header
tail(object)  # Prints out the last observ in DS + header
# Instruc:
# S1- Print first observ's of DS: 'mtcars' + header
# EXR
# Have a quick look at your data
head(mtcars)
#------------------------------
# < Have a look at the structure >
str()  # num(Obsv's , v's), list of v names's, dtype for each v, first obsv's
# EXR
# Investigate the structure of the mtcars data set to get started!
str(mtcars)
#-------------------------
# < Creating a DF >
data.frame()
# Construct a DF which descr the main characteristics of eight planets.
# TofP=Terr/Gas, DiamRtoEarth=a numb, ProtSunREarth= a numb, Rings=T/F
# Code
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

# Create the data frame:
planets_df  <- data.frame(planets, type, diameter, rotation, rings)
#---------------------------------
# < Creating a DF (2) >
# str()
# Make sure have 8 obsv's & 5 varb's
# Code
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
planets_df  <- data.frame(planets, type, diameter, rotation, rings)
# Check the structure of 'planets_df'
str(planets_df)
#--------------------------
# < Selection of DF el's >
my_data_frame[1,2] #  sel the el in intersection of row1 & col2
my_data_frame[1:3, 2:4] # sel the el's in inters of R(1:3)& C(2:4)
# Code
# The code for 'planets_df' data frame from the previous exercise.
# TofP=Terr/Gas, DiamRtoEarth=a numb, RotAcrossSunREarth= a numb, Rings=T/F
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
planets_df  <- data.frame(planets, type, diameter, rotation, rings)

# All data from the first three planets
closest_planets_df <- planets_df[1:3, 1:5]
  
# All data from the last three planets
# # of rows = (last r - first r) + 1
furthest_planets_df <- planets_df[6:8, 1:5]
  
# Have a look:
closest_planets_df
furthest_planets_df
#---------------------------------
# < Selection of DF el's (2) i.e by v name >
planets_df[1:3, "type"] # Sel only first 3 el's of v 'type'. 
# Instru:
# S1- Select for last 6 rows only the diam 
# S2 - Assign sel to 'furthest_planets_diameter'
# Code
# The code for 'planets_df' data frame from the previous exercise.
# TofP=Terr/Gas, DiamRtoEarth=a numb, RotAcrossSunREarth= a numb, Rings=T/F
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
planets_df  <- data.frame(planets, type, diameter, rotation, rings)

# Do selection on both rows and columns
furthest_planets_diameter <- planets_df[3:8, "diameter"]
#-------------------------------------
# < Only Planets w/Rings >
# Concept: To select an entire col (var) know: planets_df[,"rings"]
data_frame_name$variable_name
# Code
# 'planets_df' is pre-loaded in your workspace

# Create the rings_vector
rings_vector <- planets_df$rings
#-----------------------------------
# < Only Planets w/Rings (2) >
# Instruc:
# S1- Assign to planets_with_rings_df all data in DS 'planets_df' for the 
# planets w/rings, i.e. where rings_vector = TRUE.
# Code
planets_df #  DF of all planets
rings_vector <- planets_df$rings
rings_vector
planets_with_rings_df  <- planets_df[rings_vector,]
planets_with_rings_df
#------------------------------
# < Only planets w/rings but shorter >
subset(my_data_frame, subset = some_condition)
# Ex: subset(planets_df, subset = rings == TRUE)
# Instr:
# S1- Create a DF small_planets_df w/'diameter'< 1.
# Code
# TofP=Terr/Gas, DiamRtoEarth=a numb, RotAcrossSunREarth= a numb, Rings=T/F
subset(planets_df, subset = diameter < 1)
length(subset(planets_df, subset = diameter < 1))
nrow(subset(planets_df, subset = diameter < 1))

#----------------------
# Sorting
order()  # sort data according to a certain v in DS.
# order() is a f which gives the raked pos of each el when its applied on a 
# varb, such as a v. 
a <- c(100, 9, 101)  # 100 is 2nd largest el of this v.
a
order(a)
p  <- order(a, decreasing = TRUE)  # put 100 as el2, 9 as el1, 101 as el3
p 
a[order(a)]  # index a by [2,1,3]
#-----------------------
# < Sorting your DF >
# Goal: Rearrange DF so it starts w/ largest planet & ends w/smallest
# Sort 'diameter' col.
# Instruc:
# S1- Assign to varb 'positions' the desired ordering for new DF.Use order() 
# w/add arg 'decreasing = TRUE'.
# S2- Create DF largest_first_df, which contains same info as planets_df, but 
 # w/planets in decreasing order of magnitude.
# 'planets_df' is pre-loaded in your workspace

# What is the correct ordering based on the planets_df$diameter variable?
positions <- order(planets_df$diameter ,decreasing = TRUE ) 
  
# Create new "ordered" data frame:
largest_first_df <-  planets_df[positions,]
#-----------------------------------------
# << Ch 6: LISTS >>
# < Lists, why do u need them (2) >
# Gather a variety of obj's under 1 name in a ordered way.
# Obj's can be matrices, vectors, DF's, other lists.
#----------------------
# < Creating a List >
# my_list <- list(component1, component2, ..)
# Instruc:
# S1- Construct list 'my_list' that contains varb's 'my_vector',my_matrix, and my_df as list components.
# EXR
# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
str(my_list)
#------------------------------
# < Creating a named list >
# Concept: Give names to the components of your list.
# my_list <- list(name1 = your_comp1, name2 = your_comp2, ..)
# to name your list after you created it use names() f. 2 lines of code.
my_list <- list(your_comp1, your_comp2, ..)
names(my_list) <- c("name1", "name2", ..)
# Instruc:
# S1- Change above to add names to components.Use for 'my_matrix' name'mat'    for 'my_vector" name "vec", for "my_df" name df
# Code
# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct 'my_list' with these different elements:
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)

# Print 'my_list' to the console
my_list
str(my_list)
#--------------------
# < Creating a named list (2)
# Concept: 2 diff ways be sure you know which. Don't mix methods.
# Let's get you started with a chunk of code:
shining_list <- list(moviename = "The Shining")
Can you complete the rest? You still have to add the actors (stored in the vector actors) and reviews (stored in the vector reviews)

# The vectors 'actors' and 'reviews' are pre-loaded in the workspace

# Create the list 'shining_list'
#name1 = obj1
# initialize moviename
# moviename <- "The Shining"
# make the reviews vector a df?

my_vector <- actors
my_df <- reviews


shining_list <- list(moviename = "The Shining" ,  actors = my_vector, reviews = my_df)
# ---------------------------
# Concept: To select el's out of a ds use '[ ]'
shining_list[["reviews"]] #  selects the reviews df
shining_list$reviews #  eq to above
# Besides sel comp, u often need to sel spec el's out of these components.
## shining_list[[2]][1] u sel from the 2nd comp, actors(shining_list[[2]]), the first el([1]).
# Instruc:
# S1- Sel from shining_list the last actor & assign result to last_actor.
# S2- Sel from shining_list all info regarding the 2nd review. Store result in second_review.

# Code
# 'shining_list' is already pre-loaded in the workspace

# Define 'last_actor'
last_actor <- shining_list[[2]][5] 

# Define 'second_review'
second_review <- shining_list[[3]][2,] 
#-------------------------
# < Adding more movie info to the list >
c(list1, some_varb)
c(list1, new_name = some_varb) #  give new list item a name.
# Instruc:
# S1- Item named 'year' w/value 1980 added to shining
shining_list_full <- c(shining_list, year = 1980)
# Code
# 'shining_list', the list containing moviename, actors and reviews, is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c (shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)
#-------------------
#-------------------
# INTERMEDIATE R
# CONDITIONALS & CONTROL FLOW
T == T
"hello" != "goodbye"
3 < 5
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
linkedin
linkedin > 10
facebook <- c(17, 7, 5, 16, 8, 13, 14)
facebook
facebook <= linkedin
linkedin
#------------------
# COMPARE VECTORS
# Using relational operators, find a logical answer, i.e. TRUE or FALSE, to the following questions:
#1- For which days the number of LinkedIn profile views exceeded 15?
# CODE
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook
#---------------------
# COMPARE MATRICES
# data now in a v. R1: linkedin info, R2: FB info.
# Instruc:
# q1: When were the views for Facebook or LinkedIn exactly equal to 13? Use the views matrix to return a matrix containing logicals.
# q2: For which days was the number of views less than or equal to 14? Again, have R return a logical matrix.
# q3: How often did the number of Facebook views equal or exceed twice the LinkedIn views during a single day? Use the sum() function in combination with the linkedin and facebook vectors.
# CODE
# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
# subset rows by logical

# When does views equal 13?
views==13

# When is views less than or equal to 14?
views <= 14

# How often does facebook equal or exceed linkedin times two?
## work w/'views' matrix
sum(views[2,]> 2*views[1,])
sum
#----------------------------------------------
# & AND |
# CODE
# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20

# Is last between 0 and 5 or between 10 and 15?
(last > 0 & last < 5) | (last > 10 & last < 15)

#----------------------------------------------
# < & AND | (2) >
# PRELOADED--> V: linkedin , facebook. M = views (R1=linkedin, R2 = FB)
# The social data (linkedin, facebook, views) has been created for you
linkedin
facebook
views
# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >=12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14
#---------------------------------------------------------
# < REVERSE THE RESULT >
# !(T & T) --> F
#---------------------------------------------------------
# < BLEND IT ALL TOGETHER >
# CONCEPT: subset df's by comparison
# 'li_df' stores linkedin profile views for everyone in my company.
# GOAL: Find the number of employees that are either very popular (more than 25 profile views) or rather unnoticeable (views are below 5) on the second day, i.e. column day2 of the data frame li_df. Simply print this number to the console.
# Code


li_df


#---------------------------------------------------------


#---------------------------------------------------------