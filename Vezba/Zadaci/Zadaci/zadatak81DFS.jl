function DFS!(G, p, k)
  #inicijalizacija cvorova za obilazak
  for u = 1:length(G.V)
      G.V[u].color = 'W'
  end
  #poziv za pretragu puta od pocetnog do krajnjeg cvora
  return DFS_Visit!(G, p, k)
end

function DFS_Visit!(G, p, k)
   #trazimo put od cvora p do cvora k
   path = Int[]
   #ako smo stigli do krajnjeg cvora, 
   #vracamo putanju sa tim cvorom kao rezultat
   if p == k 
      path = [p]
      return path
   end
   #trazimo putanju preko susednih cvorova
   G.V[p].color = 'G';
   for v in findall(G.AdjMatrix[p,:] .==1)
      if G.V[v].color == 'W' && G.V[v].type  == 'P'
         path = DFS_Visit!(G, v, k);
         # ako je nadjen put od suseda do krajnjeg cvora 
         # taj put prosirujemo sa trenutnim cvorom i prekidamo pretragu
         if length(path) != 0
             return [p; path]
         end   
      end
   end
   G.V[p].color = 'B'
   return path
end 
