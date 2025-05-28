arr=[3,5,7,9,11,13];

target=29; %9,29
index=1;
found=false;

for i=1:length(arr)

    if arr(i)==target
        found=true;  
        index=i;
     break;
    end
end
 if found
     fprintf("The target element is found at index : %d \n",index);
 else
     fprintf("The target element is not found \n")
 end