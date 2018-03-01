#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors.
pullutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector  of length  1 indicating the location of the csv files
        
        ## 'pollutant' is a character vector of length 1 indicating the name of the pollutant for which we will calculate the mean; either
        ## "sulfate" or "nitrate"
        
        ## 'id' is an integer vector indicating  the monitor ID numbers to be used
        
        ## Return the mean of the pollutant across all monitors list in the 'id' vector (ignoring NA values) NOTE: Do not round the results!!
    
        names <- list.files(directory)[id] #extracting the number of files from a directory based on the id values
        read <- lapply(paste(directory,"/",names, sep = ""),read.csv)     
        return(mean(unlist(lapply(read, function(x){x[,pollutant]})), na.rm=T))
}