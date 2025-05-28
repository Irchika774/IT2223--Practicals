arr = 1:1000; % Create array from 1 to 1000
n = length(arr);
target = 67;
found = false;

% Linear Search
tic;
for i = 1:n
    if arr(i) == target
        found = true;  
        index = i;
        disp(['Linear Search - Index: ', num2str(index)]);
        break;
    end
end
elapsedTime = toc;
fprintf('Linear Search - Elapsed Time: %f seconds\n', elapsedTime);

% Binary Search
fprintf('Binary Search Beginning\n');
low = 1;
high = n;
binaryFound = false;

tic;
while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        binaryFound = true;
        disp(['Binary Search - Index: ', num2str(mid)]);
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end
elapsedTime = toc;
fprintf('Binary Search - Elapsed Time: %f seconds\n', elapsedTime);

if ~binaryFound
    disp('Element not found in Binary Search.');
end
