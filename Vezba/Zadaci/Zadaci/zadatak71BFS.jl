function BFS!(G, idStart, idEnd)
   v = 1:size(G.AdjMatrix, 1) 
   for u in v
     if u != idStart
        G.V[u].color = 'W'
	G.V[u].d = typemax(Int)
	G.V[u].pred = -1
     end
   end 
   G.V[idStart].color = 'G'
   G.V[idStart].d = 0
   G.V[idStart].pred = -1
  
   Q = Int[]
   push!(Q, idStart)
   while ~isempty(Q) 
        u = Q[1]
	deleteat!(Q, 1) 
	if u == idEnd 
           path = Int[]
  	   temp = idEnd; 
	   while (temp != idStart) 
		path = [temp; path]
		temp = G.V[temp].pred;
	   end 
	   return [idStart; path]
	else 
	   for v in findall(G.AdjMatrix[u,:] .==1) 
	     if G.V[v].color=='W' 
	        G.V[v].color = 'G'
	        G.V[v].d = G.V[u].d + 1
	        G.V[v].pred = u
	        push!(Q, v)
	     end 
	  end 
	end
	G.V[u].color = 'B'
   end 
   return []
end 