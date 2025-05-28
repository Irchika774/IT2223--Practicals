marks = zeros(1, 5);

for i = 1:5
    marks(i) = input(['Enter the marks for student ' num2str(i) ' (out of 100): ']);

    if marks(i) >= 90
        grade = 'A';
    elseif marks(i) >= 80
        grade = 'B';
    elseif marks(i) >= 70
        grade = 'C';
    elseif marks(i) >= 60
        grade = 'D';
    else
        grade = 'F';
    end
    fprintf('Student %d: %0.2f - Grade: %s\n', i, marks(i), grade);
end

while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');

    choice = input('Please select an option (1-3): ');
    switch choice
        case 1
            bar(marks);
            xlabel('Student');
            ylabel('Marks');
            title('Marks of Students');
            grid on;

             case 2
                 avg_marks = mean(marks);
            fprintf('The average marks of the 5 students is: %.2f\n', avg_marks);
            case 3
                fprintf('Thank you for using the program. Goodbye!\n');
            break;

        otherwise
             fprintf('Invalid option. Please select a number between 1 and 3.\n');
    end
end


