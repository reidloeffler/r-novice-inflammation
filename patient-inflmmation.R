# package(readr)
# library(readr)
install.packages("readr")

data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

#----------------------------------------------------------------------------------------

class(data01)
# The type of data class is a "data frame"

#----------------------------------------------------------------------------------------

# Question 1
dim(data01)
# Output:"60 40"
# This means the data frame has 60 observations and 40 variables

#----------------------------------------------------------------------------------------

# Question 2
data01[1:4, 1:10]
# Selects rows 1-4 and columns 1-10
data01[5:10, 1:10]
# Selects rows 5-10 and columns 1-10

#----------------------------------------------------------------------------------------

# Question 3
# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)
sum(patient_1)
# The max value for patient 1 is 18 and the sum is 218

#----------------------------------------------------------------------------------------

# Question 4
max(data01[1, ])
# max inflammation for patient 1
min(data01[2, 7])
# The minimum value for patient 2 on day 7 is 3

#----------------------------------------------------------------------------------------

# Question 5
max(data01[1, ])
mean(data01 [1, ])
mean(as.numeric(data01[1, ]))
# The mean for patient 1 is 5.45

#----------------------------------------------------------------------------------------

# Question 6
avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)
plot(avg_day_inflammation)
max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)
# The plot looks like a triangle
# The daily max inflammation follows the same trend as the average daily inflammation.

#----------------------------------------------------------------------------------------

# Question 7
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)
# There appears to be overlapping min values, creating 'steps'.
# Overall, the plot stills follows the 'triangular' trend found in the other two.

#----------------------------------------------------------------------------------------
