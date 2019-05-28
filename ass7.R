p<-0.447;
q<-(1-p);
n<-31;
pmf<-c();
cdf<-c();
sum<-0;
ans<-0;
for(x in 1:31){
pmf[x]<-(choose(n,x))*(p^x)*(q^(n-x));
sum = sum + pmf[x];
cdf[x]<-sum;
}
show<-function()
{
  value<-readline(prompt = "Enter the value :- ");
  value<-as.integer(value);
  ans<-(choose(31,value))*(0.447^value)*(0.553^(31-value));
  print(ans);
}
print(pmf);
print(cdf);
plot(pmf);
plot(cdf);
