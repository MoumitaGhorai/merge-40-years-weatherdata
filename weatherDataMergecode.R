

install.packages("openxlsx")
library(openxlsx)

#lists all the files from your location, here I had saved all 40 dataframes in one folder 'formerging'
list <- list.files(path= "~Desktop/formerging", full.names=TRUE) 
combined_list <- lapply(list,function(filename){
  read.xlsx(filename)
})

#merges the files in 'combined list'
df <- Reduce(merge,combined_list) 


#save the merged files in my 'formerging folder
write.csv(df, "~/Desktop/formerging/merged_file.csv" ) 