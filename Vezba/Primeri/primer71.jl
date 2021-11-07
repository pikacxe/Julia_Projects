include("graph.jl")
include("BFS.jl")
M = [0 1 0 0 0 1 1; 
     0 0 0 0 0 1 0; 
     0 0 0 0 0 0 1;
     0 0 1 0 1 0 0; 
     0 0 0 0 0 0 0; 
     0 0 0 1 1 0 1;
     0 0 0 0 1 0 0]
s = 1;
G = nonEmptyGraph(M)
BFS!(G, s)
printGraph(G)
