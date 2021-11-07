function DFS!(G) 
	v = 1:size(G.AdjMatrix, 1); 
	for u = v 
		G.V[u].color = 'W'; 
		G.V[u].pred = -1; 
	end 
	for u = v 
		if G.V[u].color == 'W'; 
			DFS_Visit!(G, u); 
		end 
	end 
end 
function DFS_Visit!(G, u) 
	G.V[u].color = 'G'; 
        for v in findall(G.AdjMatrix[u,:] .==1) 
		if G.V[v].color == 'W' 
			G.V[v].pred = u; 
			DFS_Visit!(G, v); 
		end 	
	end 
	G.V[u].color = 'B'; 
end
 
