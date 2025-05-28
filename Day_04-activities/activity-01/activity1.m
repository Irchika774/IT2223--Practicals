balance = 1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Check the balance\n');
    fprintf('4. Exit\n');

    option = input('Enter your option: ');

    switch option
        case 1
            deposit_amount = input('Enter the deposit amount: ');

            if deposit_amount > 0
                balance = balance + deposit_amount;
                fprintf('Successfully deposited %.2f. Your new balance is %.2f.\n', deposit_amount, balance);
            else
                fprintf('Invalid deposit amount. Please enter a positive value.\n');
            end

         case 2
             withdraw_amount = input('Enter the withdrawal amount: ');

             if withdraw_amount > 0
                if withdraw_amount <= balance
                    balance = balance - withdraw_amount;
                    fprintf('Successfully withdrew %.2f. Your new balance is %.2f.\n', withdraw_amount, balance);
                else
                    fprintf('amount is insufficient. Your current balance is %.2f.\n', balance);
                end
            else
                fprintf('Invalid withdrawal amount. Please enter a positive value.\n');
             end

          case 3
                 fprintf('Your current balance is %.2f.\n', balance);

          case 4
                 fprintf('Thank you for using our ATM service. Goodbye!\n');
            break;

        otherwise
            fprintf('Invalid selection. Please choose an option between 1 and 4.\n');
    end
end