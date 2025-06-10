s = [1 1 1 2 3 6 4 7 8 8];     
t = [2 3 4 5 3 6 7 6 7 5];       
weights = [100 10 10 10 10 20 10 30 50 10];  

G = digraph(s, t, weights);


plot(G, 'EdgeLabel', G.Edges.Weight, 'NodeColor', 'r', ...
    'MarkerSize', 12, 'LineWidth', 6);
title('Weighted Directed Graph');
