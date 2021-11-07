function mergeSort!(A)
    return mergeSortStep!(A,1,length(A))
end

function mergeSortStep!(A,p,r)
    if p < r
        q = Int(floor((p+r)/2));
        mergeSortStep!(A, p, q);
        mergeSortStep!(A, q+1, r);
        mergeRez!(A, p, q, r);
    end
    return A     
end

function mergeRez!(A, p, q, r)
    L = copy(A[p:q])
    R = copy(A[q+1:r])
    push!(L, typemin(Int64))
    push!(R, typemin(Int64))
    i = 1;
    j = 1;
    for k = p:r
        if R[i] <= L[j]
            A[k] = L[j];
            j = j + 1;
        else
            A[k] = R[i];
            i = i + 1;
        end
    end
end