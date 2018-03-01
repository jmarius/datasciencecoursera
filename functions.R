#adding to agruments
add2 <- function(x,y) {
        x + y
}

#Returns values of a vector that is greater than 10
above10 <- function(x) {
        use <- x > 10 #identifies which elements in the vector are greater than 10
        x[use] #subset the vector so that it only returns the values greater than 10
}

#Returns values above a value: defaulting n to 10
above <- function(x,n = 10) {
        use <- x > n
        x[use]
}

#Creating a function to calculate the mean of each column in a dataframe or matrix: Calculate the mean of the observe values, no na's
column_mean <- function(y, removeNa = TRUE) {
        nc <- ncol(y)  # first determine the number of columns
        means <- numeric(nc)   #initiate a vector of length nc to store the means as each column is being calculated
        for (i in 1:nc) {
                means[i] <- mean(y[, i], na.rm = removeNa)
        }
        means #Return the means vector
}

