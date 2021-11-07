function primer74BFS(G, ime, prezime) 
	s = -1; 
	suggestions = []; 

	for i = 1:length(G.V) 
		if G.V[i].ime==ime && G.V[i].prezime==prezime
			s = i
			break
		end 
	end
 
	if s == -1
		println("Ne postoji korisnik za zadatim imenom.")
		return []
	else 
		println("Id zadatog korisnika je: $s")
	end 

	for u = 1:length(G.V)
	   if u!=s
		G.V[u].color = 'W'
		G.V[u].d = typemax(Int64)
		G.V[u].pred = -1
	   end
	end 

        G.V[s].color = 'G'
        G.V[s].d = 0
        G.V[s].pred = -1
  
        Q = Int[]
        push!(Q, s)
	while ~isempty(Q) 
		u = Q[1]
		deleteat!(Q, 1) 
		if G.V[u].d < 2 
		     for v in findall(G.AdjMatrix[u,:] .==1) 
			   if G.V[v].color=='W' 
			      G.V[v].color = 'G'
			      G.V[v].d = G.V[u].d + 1
			      G.V[v].pred = u
			      push!(Q, v)
			   end 
		     end 
		end 
		if G.V[u].d == 2 #prijatelji od prijatelja se nalaze na distanci 2 
			push!(suggestions, G.V[u]); 
		end 
		G.V[u].color = 'B'; 
	end 
	return suggestions
end
