
arr = 1:1000;
target = 450;
n = length(arr);
found = false;
index = -1; 

% -------- Linear Search --------
tic;
for i = 1:n
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end
elapsedTimeLinear = toc;

if found
    fprintf("Linear Search: Target element found at index %d\n", index);
else
    fprintf("Linear Search: Target element not found.\n");
end
fprintf("Elapsed time (Linear Search): %f seconds\n\n", elapsedTimeLinear);

% -------- Binary Search --------
low = 1;
high = length(arr);
found = false;

tic;
while low <= high
    mid = floor((low + high) / 2);
    
    if arr(mid) == target
        found = true;
        index = mid;
        fprintf("Binary Search: Target element found at index %d\n", index);
        break;
    elseif arr(mid) > target
        high = mid - 1; 
    else
        low = mid + 1;
    end
end
elapsedTimeBinary = toc;

if ~found
    fprintf("Binary Search: Target element not found.\n");
end
fprintf("Elapsed time (Binary Search): %f seconds\n", elapsedTimeBinary);
