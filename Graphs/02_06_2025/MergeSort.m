%arr = [64, 34, 25, 12, 22, 11, 9];
%mid=(arr.length+1)/2;

%for i=1:arr.length
 % while(i>mid)
  %    rarr(p)=arr(i);
  %end
  %while(i<=mid)
   %   larr(q)=arr(i);
  %end
%end

function sortedArray = MergeSort(array)
    if numel(array) <= 1
        sortedArray = array;
        return;
    end
    
    mid = floor(numel(array) / 2);
    leftHalf = MergeSort(array(1:mid));
    rightHalf = MergeSort(array(mid+1:end));
    
    sortedArray = Merge(leftHalf, rightHalf);
end

function mergedArray = Merge(leftHalf, rightHalf)
    mergedArray = [];
    while ~isempty(leftHalf) && ~isempty(rightHalf)
        if leftHalf(1) <= rightHalf(1)
            mergedArray = [mergedArray, leftHalf(1)];
            leftHalf(1) = [];
        else
            mergedArray = [mergedArray, rightHalf(1)];
            rightHalf(1) = [];
        end
    end
    mergedArray = [mergedArray, leftHalf, rightHalf];
end
