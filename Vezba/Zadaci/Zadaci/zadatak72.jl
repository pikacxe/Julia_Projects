include("graph.jl")
include("zadatak72DFS.jl")

M = [0 1 1 0 0 0 0; 
     1 0 0 0 0 0 0; 
     1 0 0 0 0 0 0;
     0 0 0 0 0 0 1; 
     0 0 0 0 0 1 0; 
     0 0 0 0 1 0 0;
     0 0 0 1 0 0 0]

G = nonEmptyGraph(M)
DFS!(G)

printGraph(G)