#packages to be installed: 
install.packages("xlsx")

#to read the dataset form excel file: 
install.packages("readxl")
library("readxl")
Mytopsis<-read_xlsx("~/Desktop/Objective-2/2000-nodes-with2prs.xlsx", row.names(1)) # write the full path of excel sheet

# start TOPSIS
library("topsis")
d <- data.matrix(Mytopsis)
i <- c("-", "-") # criteria 
w <- c(0.667, 0.333)   #weights
start_time <- Sys.time()
result <- topsis(d,w,i)
end_time <- Sys.time()

#------------write the result to excel----------------
#to write in excel sheet
install.packages("writexl")
library("writexl")
write_xlsx(result, "~/Desktop/Objective-2/NewAHP-weights-topsisresult.xlsx")

#this command will create a spreadsheet called datasetresult and copy the result of topsis in this sheet
View (result) #to view the result in R 
View (end_time-start_time)

