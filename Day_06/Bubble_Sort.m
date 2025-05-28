arr=[64,34,25,12,22,11,9];
temp=0;
for j=1:length(arr)-1
for i=1:length(arr)-1
 if arr(i)>arr(i+1)
     temp=arr(i);
     arr(i)=arr(i+1);
     arr(i+1)=temp;
     disp(arr);
 end
end
end

 disp(arr);
 %%this is bubble sort