include("../Strukture/klubovi.jl")

#Insertion Sort
function insertionSortKlubovi!(A)
    for j in 2:length(A)
        key = A[j];
        i = j-1;
        while(i > 0 && uporedi(key,A[i]))
            A[i+1] = A[i];
            i = i-1;
        end
        A[i+1] = key;
    end
    return A
end


#Merge Sort

function mergeSortKlubovi!(A)
    mergeSortStepKlubovi!(A,1,length(A))
end

function mergeSortStepKlubovi!(A,p,r)
    if p < r
        q = Int(floor((p+r)/2));
        mergeSortStepKlubovi!(A,p,q)
        mergeSortStepKlubovi!(A,q+1,r)
        mergeRezKlubovi!(A,p,q,r)
    end
end

function mergeRezKlubovi!(A,p,q,r)
    L = copy(A[p:q])
    R = copy(A[q+1:r])

    push!(L,Klub("-",typemin(Int64),typemin(Int64),typemin(Int64)))
    push!(R,Klub("-",typemin(Int64),typemin(Int64),typemin(Int64)))
    i = 1;
    j = 1;
    for k = p:r
        if uporedi(L[i],R[j])
            A[k] = L[i];
            i = i + 1;
        else
            A[k] = R[j];
            j = j + 1;
        end
    end
end
mergeSortKlubovi!(klubovi)
ispisKlubova(klubovi)
