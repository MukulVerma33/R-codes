# #CHI SQ---> sum of (observed-expected)^2/expected
# #           array<-c(1,2,3,4,5,1.24,"Hello guys",'a'); #array declaration
#             #print(array);                             #print array
# options(max.print = 10000);
# a<-c(11,12,13,14,15,16);
# # x<-c(1,2,3,4,5,6);
# x<-1;
# c<-c(37,38,39,40,41,42);
# m<-100;
# course=matrix(nrow=6,ncol=750);
# # course[1,1]=((a[1]*x[1]+c[1])%%m);
# # print(course);
# for(i in 1:6)
# {
#   for(j in 1:750)
#   {
#      x1<-((a[i]*x+c[i])%%m);
#      x=x1;
#      course[i,j]<-x1;
#     #course[j,i]<-runif(1,0,100);
#   }
# }
#  print(course);
# sub1.mean<-mean(course[1,]);
# sub2.mean<-mean(course[2,]);
# sub3.mean<-mean(course[3,]);
# sub4.mean<-mean(course[4,]);
# sub5.mean<-mean(course[5,]);
# sub6.mean<-mean(course[6,]);
# print(sub1.mean);
# print(sub2.mean);
# print(sub3.mean);
# print(sub4.mean);
# print(sub5.mean);
# print(sub6.mean);
# sum<-0;
# for(i in 1:750)
# {
#   sum<-sum+course[2,i];
# }
# print(sum/750);

#  SECOND METHOD

#CHI SQ---> sum of (observed-expected)^2/expected
#           array<-c(1,2,3,4,5,1.24,"Hello guys",'a'); #array declaration
#print(array);                             #print array
options(max.print = 10000);
a<-c(11,12,13,14,15,16);
# x<-c(1,2,3,4,5,6);
x<-1;
c<-c(37,38,39,40,41,42);
m<-100;
course=matrix(nrow=750,ncol=6);
# course[1,1]=((a[1]*x[1]+c[1])%%m);
# print(course);
for(i in 1:6)
{
  for(j in 1:750)
  {
    x1<-((a[i]*x+c[i])%%m);
    x=x1;
    course[j,i]<-x1;
    #course[j,i]<-runif(1,0,100);
  }
}
print(course);
sub1.mean<-mean(course[,1]);
sub2.mean<-mean(course[,2]);
sub3.mean<-mean(course[,3]);
sub4.mean<-mean(course[,4]);
sub5.mean<-mean(course[,5]);
sub6.mean<-mean(course[,6]);
print(sub1.mean);
print(sub2.mean);
print(sub3.mean);
print(sub4.mean);
print(sub5.mean);
print(sub6.mean);
#x <- seq(1, 750, length=750)
hx <- course[,1];
plot(1:750, course[,1], type="l", xlab="x value",ylab="Density", main="Comparison of t Distributions")
chisq.test(course)

print(result)
summary(course);
#plot((1:750), course[,1], type="h", xlab="x value",ylab="Density", main="Comparison of t Distributions")
# sum<-0;
# for(i in 1:750)
# {
#   sum<-sum+course[i,3];   #manual mean
# }
# print(sum/750);