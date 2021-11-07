# primer81.jl
# inicjalizujemo podatke u grafu
include("labyrinth.jl")
include("primer81BFS.jl")

nbRows = 5; 
nbColumns = 5; 
G = emptyLabyrinth(nbRows, nbColumns)

defineNodesType!(G,[1 2 3 5 6 8 10 11 12 13 14 15 17 21 22 23 24 25],'P'); #PUT
defineNodesType!(G, [4 7 9 16 18 19 20], 'Z'); #ZID 

println("Izgled lavirinta pre obilaska")
println()
printLabyrinthType(G)
println()
println("Ispis lavirinta pre obilaska")
println()
printLabyrinthColor(G)
println()

println("Ispis lavirinta posle obilaska")
println()
BFS!(G, 21); 
printLabyrinthColor(G)
println()

println("Izgled lavirinta sa putanjom")
println()
path = getPath(G, 21, 5)
printLabyrinthPath(G, path)
println()