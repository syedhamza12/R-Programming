#Here we start With very basic IN R programming
#1 how we take user input in R 
#2 how we use IF Else in R
#3 how we use For loop & while Loop in R
#4 how we create Vector in R
#5 how we create Metrix in R
#6 how we create Factor in R
#7 how we create DataFrame in R
#8 how we create Function  in R


#here we write code take input from user
math=as.integer(readline(prompt = 'enter the mmath marks'))
englsih=as.integer(readline(prompt = 'enter the englsih marks'))
urdu=as.integer(readline(prompt = 'enter the urdu marks'))
total=math+englsih+urdu
per=total*100/300
print(per)

#here we use IF ELSE IF ELSE IN R programming

if(per>=80){
  print('a one grade')   #here we IF : ELSE IF : ELSE
} else if(per<70){
  print("a greade huuragh")
} else{
  print('you are fail')
}


# here we Use FOR LOOP IN R PROGRAMMING

# here we use loop to write a write no 1 to 10 with hamza
for(i in 10:1){
  print(c(i,'hamza'))
}

# here we use loop for create Alphabet Series
l=LETTERS[1:15]
for(i in l){
  print(i)
}

#here we create table in R from taking user Input to the help of Loop

numb=as.integer(readline(prompt = 'enter the number'))
for(i in 1:10) {
  print(paste(numb,'*',i,'=',numb*i))
  
}


# here we use Whiel Loop IN R

# here we create table to the help of while loop
i=1
while(i<=10){
  print(paste(numb,'*',i,'=',numb*i))
  i=i+1
}


#now we  create Function In R prgramming

#here we create function to multiply two number in R
add=function(a,b){
  print(a*b)
}

add(2,3)

#here we create function to take a square of number
lo=function(a){
  for(i in 1:a){
    print(i**2)
  }
  
}
lo(22)



#now we study about the Vector in R

alpha=c(1,2,3,4,5)
beta=c(11,22,33,44,55)
beta[3]
alpha**2
rep(1:3,times=5 )  # here we create Vector for repitition number
seq(from=1,to=22,by=3)  # here we create Vector for Sequence of number


#here we study about the Metrix in R 

d=matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow = 4,ncol = 3)
print(d)

#here we study about the Metrix in R by using column name
lf=matrix(1:16, nrow = 5,ncol=4,dimnames = list(c('r','j','k','l','m'),c('ff','jj','kk','ss')))
lf


#here we use List in R
sf=list(1,2,3,2.0,'hamza')
sf

# here we create another list in R
li=list('hamza','jamil',c(1,2,3,4),TRUE,1.2,4.3,55.2)
li

# here we Create Factor In R programming

aa=c('hamza','jamil','syed','hamza','jamil')
d_f=factor(aa)
d_f

#here we create Data Frame IN R prgramming

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
