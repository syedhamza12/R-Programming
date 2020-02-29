#here we dicuss 
#1 how we create CSV File in R
#2 how we Read CSV file in R
#3 how we Read XLSX file in R
#4 how we read SQL Database File in R

#here we crete data frame
data=data.frame(
  id=c(1,2,3,4,5),
  name=c('hamza','jamil','shah','ali','atif'),
  dep=c('IT','ELECT','COMP','BBA','BCOM'),
  sal=c(12000,32000,243232,2223,4343)
)
data


#here we create another data frame
ndata=data.frame(
  age=c(12,33,44,55,66)
)
ndata


#here we combined two data frame
comb=cbind(data,ndata)
comb

#here we create CSV File of our DATA FRAME
cos=write.csv(comb,'read.csv')
# After create CSV file we read our csv file
fil=read.csv("C:\\Users\\hamza jamil\\Documents\\read.csv")
fil

# here we read xlsx file 
ex=read.xlsx('C:\\Users\\hamza jamil\\Desktop\\PROGRAM\\excel tutorial fol\\stock_data.xlsx')
ex



# now here we read our SQL Database file first we create connecton b/w R & Server
file2=odbcConnect('TestServer')
fil1=sqlQuery(file2,'SELECT TOP (1000) [st_id]
      ,[st_name]
      ,[st_father]
      ,[st_fees]
  FROM [student].[dbo].[student1]')
fil1

subset(fil1,st_id>=2)
subset(fil1,st_fees==1200)# here we write some query to accses our specific data
summary(fil1$st_fees)