# zadatak 8.2
include("labyrinth.jl")
include("zadatak82BFS.jl")

# kreiramo graf
nbRows = 8;
nbColumns = 8;
G = emptyLabyrinth(nbRows, nbColumns);

# kreiramo lavirint
defineNodesType!(G, 1:nbRows*nbColumns, 'P');
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z');

# definisemo izlaze
Izlazi=[1 8 62 64]

# trazimo put od 57 do najblizeg izlaza
path = BFS!(G, 57, Izlazi)
println("Path = $path")

printLabyrinthPath(G, path)
