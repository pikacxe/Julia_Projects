# Zadatak 8.1
include("labyrinth.jl")
include("zadatak81DFS.jl")

# definisanje lavirinta
nbRows = 8
nbColumns = 8
G = emptyLabyrinth(nbRows, nbColumns)
# definisanje vrsta cvorova
defineNodesType!(G, 1:nbRows*nbColumns, 'P'); #PUT
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z'); #ZID

# poziv za trazenje puta od dvora 57 do cvora 1
path = DFS!(G, 57, 62);

println("Ispis putanje i izgled lavirinta posle obilaska")
println("Path = $path")
printLabyrinthPath(G, path)
