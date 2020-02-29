#here we create Data Frame for Analysis Purpose in R

data=data.frame(
  E_ID=c(1:7),
  E_NAME=c('hamza','jamil','hamza','ali','faizan','umer','zia'),
  E_AGE=c(12,54,37,61,52,19,33),
  E_SAL=c(1000,1200,1000,1200,1821,2431,1721),
  E_DEP=c('it','it','mech','elect','ac','ac','network'),
  S_DATE=as.Date(c('2012-4-12','2019-6-1','2016-12-5','2004-6-13','2012-4-12','2019-6-1','2016-12-5')),
  
  stringsAsFactors = FALSE
  
  
)
data

#summary method is used to find the all statistic quantity in our data
summary(data)

#here we run some column our data set
result=data.frame(data$E_NAME,data$E_SAL,data$E_DEP)
result

#here we run somme our dataset
data[1:2,]

#here we used another method to accsess row and somme column
data[c(1,3),c(1,3)]

#here we addd another column in our data frame using $ method
data$E_ADDR=c('karachi','baldia','liyar','moro','lahore','sukur','turkey')
data

# number of column in our Dataset
ncol(data)

# number of ROW in our Dataset
nrow(data)

#here we find maximumm & minimum salary
max(data$E_SAL)#to find max salary

min(data$E_SAL)#to find mmin salary

#TO FIND MAX SALARY WITH COMPLETE DATA
subset(data,E_SAL==max(E_SAL))
subset(data,E_SAL==min(E_SAL))

#HERE we GET INFORmatoin PERSON DAT WORK IN IT DEPARTHMENT & Mech
subset(data,E_DEP == 'it')
subset(data,E_DEP == 'mech')

#here we find salary in AC department
subset(data,E_SAL >600 & E_DEP == 'ac')


subset(data,as.Date(S_DATE) > as.Date('2009-06-13'))
data.frame(data$E_NAME)


