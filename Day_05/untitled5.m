%Selection sort -findoing he minimum one


arr=[7,4,10,8,3,1];
min=arr(1);
temp=0;
tic;
for i=1:length(arr)-1
    for j=i+1:length(arr)
    if(arr(j)<min) 
      % min=arr(j);
       temp=arr(i);
       arr(i)=arr(j); 
       arr(j)=temp;
      
    end
   
    end
   %disp(arr(i));
   min=arr(i+1);
end
for i=1:length(arr)
  disp(arr(i));
end
 elapsedTime = toc;

fprintf('Elapsed time:%fseconds\n',elapsedTime);







