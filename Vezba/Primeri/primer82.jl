# Primer8.2
include("labyrinth.jl")
include("primer82BFS.jl")

nbRows = 8; 
nbColumns = 8;
# generisanje lavirinta
G = emptyLabyrinth(nbRows, nbColumns)

# definisanje tipa za odredjeni podskup cvorova iz grafa 
defineNodesType!(G, 1:nbRows*nbColumns, 'P'); #put 
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z'); #zid 
defineNodesType!(G, [62], 'C'); #cilj 

println("Izgled grafa pre obilaska")
printLabyrinthType(G)
println()

path = BFS!(G, 57)
println("Ispis grafa posle obilaska")
printLabyrinthColor(G) 
println()

println("Ispis putanje i izgled lavirinta posle obilaska")
println("PATH = $path")
printLabyrinthPath(G, path) 
