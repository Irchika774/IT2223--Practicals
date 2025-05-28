%function fact=factorial(n)
%fact=1;
% for i=1:n
 %fact= fact*(i)

 %end
%disp("factorial is");
%disp(fact);
%end

%number= input("Enter your number:");
%factorial(number);

function f=factorial(n)
if n==0 ||n==1
  f=1;
else
    f=n*factorial(n-1);
end
end


