arr = 1:1000; % Create an array with 1000 numbers
target = 450;
n = length(arr);
found = false;

% Linear Search
tic;
for i = 1:n
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end
toc;

if found
    fprintf("The target element is found at index %d\n", index);
else
    disp("Target element is not found.");
end

% Binary Search
low = 1;
high = n;

tic;
binaryFound = false;
while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        fprintf("Element found at index %d\n", mid);
        binaryFound = true;
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end
toc;

if ~binaryFound
    fprintf("Element %d not found in Binary Search.\n", target);
end
