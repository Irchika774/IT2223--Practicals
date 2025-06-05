s =[1 2 2];
t =[2 3 4];

weights = [10 5 7];
G = graph(s, t, weights);
plot(G,'Elegebal',G.Edges.weights);
title('Weighted Undirected Graph');