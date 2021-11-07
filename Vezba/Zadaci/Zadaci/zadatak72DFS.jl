function DFS!(G) 
	v = 1:size(G.AdjMatrix, 1); 
	for u = v 
		G.V[u].color = 'W'; 
		G.V[u].pred = -1; 
	end 
	rbOstrva = 0
	for u = v 
		if G.V[u].color == 'W'; 
			rbOstrva = rbOstrva + 1
			DFS_Visit!(G, u, rbOstrva)
		end 
	end 
end 
function DFS_Visit!(G, u, rbOstrva) 
	G.V[u].d = rbOstrva; # d umesto za razdaljinu, koristimo pripadnost ostrvu
	G.V[u].color = 'G'; 
        for v in findall(G.AdjMatrix[u,:] .==1) 
		if G.V[v].color == 'W' 
			DFS_Visit!(G, v, rbOstrva); 
		end 	
	end 
	G.V[u].color = 'B'; 
end