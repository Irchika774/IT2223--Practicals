%s=11; 
%%%h=plot(G, 'Layout','force');
%highlight(h,11,9,8,7,6,10,'EdgeColor','magenta');
%plot(G,'EdgeLabel',G.Edges.Weight);
%plot(G);
%plot(G,'NodeColor','magenta','LineWidth',1.5)
%highlight(h,1,3,'EdgeColor','magenta')

%t1=1:6;
%G1= graph(s,t1);
%h=plot(G1, 'Layout','force');
%plot(G1,'NodeColor','magenta','LineWidth',1.0)
%plot(G1);
%highlight(h,11,4,3,2,1,5,'EdgeColor','magenta');

s=[11 11 ]; 
t=2:6;
G= graph(s,t);
h=plot(G, 'Layout','force');