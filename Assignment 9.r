n<-31
p<-0.447
q<-1-p
x<-numeric(n)
for(i in 0:n)
{
x[i]<-pbinom(i,n,p)
}
print(x);
plot(1:n,x);
prob<-function(type){
  c<-readline(prompt = "Enter");
  c<-as.integer(c);
  switch(type,
         ">" =print(1-dbinom(c,31,0.447)));
}