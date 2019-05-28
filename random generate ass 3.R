random<-function()
{
a<-3;
x<-1;
c<-2;
m<-100;
array<-c();
for(i in 1:100)
{
  x1<-((x*a+c)%%m);
  x<-x1;
  array[i]<-x1;
  #(x1);
}
print(array);
write.table(array,file="hello.csv",sep=",")
}
random();
# rnorm(100,0,100);   #rnorm(number of values,mean,sd)
# runif(100);         #runif(number of values,min value,max value)
# sample(1:100,33,replace=FALSE,prob=NULL); #sample(numbers,size,with or w/o replacement,prob=NULL) generate random numbers in range

