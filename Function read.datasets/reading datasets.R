#_______________________________________________________________________________
#function read.datasets
#________________________________________________________________________________________

read.datasets <- function(directory,id=1:x, na.rm = TRUE){ #directory is the folder path
                                                             #id is number of files to read
        setwd(directory)                                     
        directorio <- dir()
        datos <- data.frame()
        x <- length(directorio)
        
        for(i in directorio[id]){
                datos <- rbind(datos,read.csv(i))
        }
        
        if(na.rm == TRUE){
                datos2 <- na.omit(datos)
        } else{
                datos2 <- datos
        }
}

#________________________________________________________________________________

#function read.datasets in action
datos <- read.datasets(directory = "specdata") #read all


