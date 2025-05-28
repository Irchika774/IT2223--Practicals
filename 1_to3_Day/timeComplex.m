n=1000;
 
tic;  %start timing

for i=1:n
    disp(i);
end

elapsedTime = toc; %End timing and store elapsed time

fprintf('Elapsed time:%fseconds\n',elapsedTime);
