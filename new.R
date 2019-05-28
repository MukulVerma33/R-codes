 arr<-c(2,3);
  a<-1;
  c<-2;
  x<-3;
  m<-1500;
  k<-3;
  for(i in 1:1500)
  {
    count<-0;
    x<-(a*x+c)%%m;
    for(j in 2:x-1)
    {
      if((x%%j)==0)
        {count<-count+1;}
    }
    if(count==1)
    {
      arr[k]<-x;
      k<-k+1;
    }
    
  }
  print(arr);
  plot(1:239,arr,type='h');
  #hist(1:1500,arr);
