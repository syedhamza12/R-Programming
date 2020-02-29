#here we discuss about the Visualization IN R programming
#1 how we create simple Pie chart in R
#2 how we create 3D pie chart in R
#3 how we create Bar plot in R
#4 how we create group Bar Chart in R
#5 how we create Histogram in R


#here we create PIE CHAR in R prgraming  
slic=c(12,21,34,51)
lab=c('syed','hamza','jamil','hasan')
piper<- round(100*slic/sum(slic), 1)
pie(slic,labels=lab,main = 'this is froute',explode=0.3)


#  here we create PIE CHAR by using rainbow color method in R prgraming  
#here we import library library(plotrix) for 3d piie
install.packages(plotrix)
library(plotrix)
slic=c(12,21,34,51)
lab=c('syed','hamza','jamil','hasan')
piepercent<- round(100*slic/sum(slic), 1)
pie(slic,labels = piepercent,main='this is city pie',col = rainbow(length(slic)))
legend('topleft',c('syed','hamza','jamil','hasan'),cex = 0.7,fill = rainbow(length(slic)))
pie(slic,lab,col = rainbow(length(slic)),clockwise = 0.6)

pie3D(slic,labels=piper,explode=0.2,)
legend('bottomleft',c('syed','hamza','jamil','hasan'),fill = rainbow(length(lab))
       ,cex = 0.5)



#here we create BAR CHART in R prgraming  

h=c(7,12,3,28,41)
nam=c('may','apr','jan','dec','aug')
barplot(h,names.arg = nam,col = 'skyblue',border = 'red',xlab = 
          'acount',ylab = 'zaakat')


# here we create stack bar chat and group bar chat in R programming

colors=c('yellow','skyblue','red')
months=c('jan','feb','mar','apr','may')
regions=c('east','west','south')
#val=matrix(1:15,nrow = 3,ncol = 5,byrow = TRUE)
Val <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
barplot(val,names.arg = months,col = colors,xlab = 'months',ylab = 'revenue')
legend('topleft',regions,fill = rainbow(length(regions)),cex = 0.5)
)


#here we create a Historgram  in R prgramming

v <-  c(9,13,21,8,36,22,12,41,31,33,19)
hist(vc,col='red',xlab = 'value is here',border = 'blue')
#here we make historgram by x and y range value by xlim,ylim
u <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(u,xlab = 'yesrange',col='skyblue',border = 'red',xlim = c(0,20),ylim=c(0,5),
     breaks = 7)