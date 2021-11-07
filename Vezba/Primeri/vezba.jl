function BFS(G,s)
    u = 1:size(G.AdjMatrix,1)
    for v in u
        if v != s
            G.V[v].color = "W"
            G.V[v].d = typemax(Int)
            G.V[v].pred = -1
        end
    end

    G.V[s].color = "G"
    G.V[s].d = 0
    G.V[s].prd = -1

    Q = Int[]
    push!(Q,s)
    while !isempty(Q)
        k = Q[1]
        deleteat!(Q,1)
        for m in findall(G.AdjMatrix[k,:] .== 1)
            if G.V[m].color == "W"
                G.V[m].color == "G"
                G.V[m].d = G.V[k].d + 1
                G.V[m].pred = k
                push!(Q,m)
            end
        end
        G.V[k].color = "B"
    end
end

function getPath(G,idStart,idEnd)
    path = Int[]
    temp = idEnd
    while temp != idStart
        path = [temp; path]
        temp = G.V[temp].pred 
    end
    return [idStart;path]
end