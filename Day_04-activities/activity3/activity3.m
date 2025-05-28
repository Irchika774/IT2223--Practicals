clc;
clear;

totalVoters = input('Enter the total number of voters: ');

voteCounts = [0, 0, 0, 0];
for i = 1:totalVoters
    fprintf('Voter %d, please choose a candidate:\n', i);
    fprintf('1. Candidate A\n2. Candidate B\n3. Candidate C\n4. Candidate D\n');
    choice = input('Enter your choice (1-4): ');
    
    switch choice
        case 1
            voteCounts(1) = voteCounts(1) + 1;
        case 2
            voteCounts(2) = voteCounts(2) + 1;
        case 3
            voteCounts(3) = voteCounts(3) + 1;
        case 4
            voteCounts(4) = voteCounts(4) + 1;
        otherwise
            fprintf('Invalid vote! Skipping...\n');
    end
end

fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', voteCounts(1));
fprintf('Candidate B: %d votes\n', voteCounts(2));
fprintf('Candidate C: %d votes\n', voteCounts(3));
fprintf('Candidate D: %d votes\n', voteCounts(4));
[maxVotes, winnerIndex] = max(voteCounts);
if maxVotes > 0
    fprintf('The winner is Candidate %c with %d votes.\n', char('A' + winnerIndex - 1), maxVotes);
else
    fprintf('No winner, as there were no valid votes.\n');
end

while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    
    menuChoice = input('Enter your choice: ');
    
    switch menuChoice
        case 1
            bar(voteCounts);
            title('Votes Bar Chart');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 2
            pie(voteCounts, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Votes Pie Chart');
        case 3
            scatter(1:4, voteCounts, 'filled');
            title('Votes Scatter Plot');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            % Exit
            fprintf('Exiting the visualization menu.\n');
            break;
        otherwise
            fprintf('Invalid choice! Please try again.\n');
    end
end

fprintf('Thank you for participating in the election process!\n');
