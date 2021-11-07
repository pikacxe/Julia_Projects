struct Kosarkasi
    ime::String
    prezime::String
    visina::Int
    pozicija::String
end


function zad41(A,visina)
    m = Int(floor(length(A)/2))
    rez = Array{Kosarkasi}(undef,0)
    if A[m].visina == visina
        k = length(A)
        i = 1
        while(i<m && k > m)
            if A[i].visina == visina
                push!(rez,A[i])
            end
            if A[k].visina == visina
                push!(rez,A[k])
            end
            i+=1
            k-=1
        end
    elseif A[m].visina > visina
        for j = m+1:length(A)
            if A[j].visina == visina
                push!(rez,A[j])
            end    
            if(A[j] != key && br !=0)
                    break 
            end
        end
    else
        for k = 1:m-1
            if A[k].visina == visina
                push!(rez,A[k])
            end    
            if(A[k] != key && br !=0)
                    break 
            end
        end
    end
    return br
end


