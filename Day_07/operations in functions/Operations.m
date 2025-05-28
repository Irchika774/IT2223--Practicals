function [sub,add,mul]=Operations(x,y)
   sub=x-y;
   add=x+y;
   mul=x*y;
end


%output first calling variable
%better to use [sub,add,mul]=Operations(7,3) for multiple variables