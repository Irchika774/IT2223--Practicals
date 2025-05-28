gpa = zeros(1,5);
marks = zeros(1,5);

for i = 1:5
    marks(i)=input(["Enter you marks: "]);
    
if marks(i)>100 || marks(i)<0
    disp('Invalid marks');

elseif marks(i)>=90
    disp('Grade A+');
    gpa(i)=4.0;

elseif marks(i)>=80
    disp('Grade A');
     gpa(i)=3.7;

elseif marks(i)>=70
    disp('Grade B+');
     gpa(i)=3.0;

elseif marks(i)>=60
    disp('Grade B');
     gpa(i)=2.7;

elseif marks(i)>=50
    disp('Grade C+');
     gpa(i)=2.0;
else
    disp('Grade F');
     gpa(i)=0.0;
end
end

GPA=mean(gpa);
fprintf('\nYour GPA is: %2f\n',GPA);