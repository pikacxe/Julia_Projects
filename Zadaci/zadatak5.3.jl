include("../Strukture/studenti.jl")

function mergeSortStudent!(A)
    return mergeSortStudentStep!(A,1,length(A))
end

function mergeSortStudentStep!(A,p,r)
    if p < r
        q = Int(floor((p+r)/2));
        mergeSortStudentStep!(A, p, q);
        mergeSortStudentStep!(A, q+1, r);
        mergeStudentRez!(A, p, q, r);
    end
    return A     
end

function mergeStudentRez!(A, p, q, r)
    L = copy(A[p:q])
    R = copy(A[q+1:r])
    push!(L, Student("-","-",typemax(Int64)))
    push!(R, Student("-","-",typemax(Int64)))
    i = 1;
    j = 1;
    for k = p:r
        if uporediStudente(L[i],R[j])
            A[k] = L[i];
            i = i + 1;
        else
            A[k] = R[j];
            j = j + 1;
        end
    end
end

function  uporediStudente(x,y)
    return x.brojIndeksa < y.brojIndeksa
end


ispisStudenata(mergeSortStudent!(studenti))