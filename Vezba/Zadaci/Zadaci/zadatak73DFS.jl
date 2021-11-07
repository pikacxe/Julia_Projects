function getPath(G, idStart, idEnd) 
	path = Int[]
	temp = idEnd 
	while (temp != idStart) 
		path = [temp; path]
		temp = G.V[temp].pred
	end 
	return [idStart; path]
end

function DFS!(G, pocetak, kraj) 
	v = 1:size(G.AdjMatrix, 1); 
	for u = v 
		G.V[u].color = 'W'
		G.V[u].pred = -1 
	end 
	DFS_Visit!(G, pocetak, kraj, pocetak)
end 

function DFS_Visit!(G, u, kraj, pocetak) 
        if u==kraj
            path = getPath(G, pocetak, kraj)
            println("Put: $path")
        else
   	   G.V[u].color = 'G'; 
           for v in findall(G.AdjMatrix[u,:] .==1) 
		if G.V[v].color == 'W' 
                        G.V[v].pred = u
			DFS_Visit!(G, v, kraj, pocetak)
		end 	
	   end 
	   G.V[u].color = 'W'; 
        end
end