num1=input('Enter number_1: ');
num2=input('Enter number_2: ');
op=input('Enter an operator(+,-,*,/): ','s');

switch op
    case '+'
        disp(num1 + num2);
    case '-'
        disp(num1 - num2);
    case '*'
        result = num1*num2;
         fprintf('Result: %.2f\n' , result)

    case '/'
    if num2 ~=0
         result = num1/num2;
         fprintf('Result: %.2f\n' , result)
    else
        disp('Error:Division by zero.')
    end
    otherwise
        disp('Invalid opeartor');
end