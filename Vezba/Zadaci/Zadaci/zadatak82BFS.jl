# primer104BFS.jl
function BFS!(G, s, A)
  # umesto puta od s do izlaza is niza A, 
  # trazimo put od izlaza iz niza A do s
  path=[]
  v=1:length(G.V);
  for u=v
    G.V[u].color = 'W'
    G.V[u].pred = -1
  end

  Q = []
  # postavljamo izlaze kao pocetne cvorove
  for i=1:length(A)
    G.V[A[i]].color = 'G'
    G.V[A[i]].pred = -1
    push!(Q, A[i]);
  end


  while ~isempty(Q)
    u = Q[1]
    deleteat!(Q, 1) 
    if u==s
      # ako naidjemo na pocetni cvorove, trazimo putanju
      temp = u
      while temp != -1
	 path = [temp; path]
	 temp = G.V[temp].pred
      end
      return path
   else
      for v in findall(G.AdjMatrix[u,:] .==1)
        if G.V[v].color=='W' && G.V[v].type != 'Z'
          G.V[v].color = 'G'
          G.V[v].pred = u
	  push!(Q, v)
        end
      end
    end
    G.V[u].color='B'
 end
 return path
end
