arr = [64, 34, 25, 12, 22, 11, 9]; % Sample array
temp = 0;
n = length(arr);

for j = 2:n 
    i = j - 1;
    temp = arr(j); % Store the current value
    
    while i >= 1 && arr(i) > temp 
        arr(i + 1) = arr(i); % Shift element to the right
        i = i - 1;
    end
    
    arr(i + 1) = temp; % Place the element in the correct position
    
    disp(arr); % Display intermediate arrays for visualization
end

disp('Final Sorted Array:');
disp(arr);
