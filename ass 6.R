s<-letters;
b<-LETTERS;
n<-{0:9};
a<-c();
t<-cbind(s,b,n);
a<-sample(t,6)
print(a);
new<-paste(a,collapse = "");
print(new)
library(magick)
jpeg(filename = "FirstImage.jpg",width = 333,height = 333)
x<-image_read("FirstImage.jpg");
annotate<-image_annotate(x,new,gravity = "center",size = 33, color="blue", strokecolor = "green",boxcolor = "yellow");
blur<-image_blur(image=annotate,radius=500,sigma=5);
noise<-image_noise(annotate,noisetype = "poisson");
noise
png(filename="faithful.jpg")
plot(noise)
dev.off()