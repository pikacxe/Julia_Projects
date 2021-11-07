function zad38(A,B, el1)
    if size(A) != size(B)
        return NaN
    end
    n = size(A)
    C = zeros(n)
    s = 0
    br = 0
    for i in 1:n[1]
        for j in 1:n[1]
            if A[i,j] > el1
                s +=A[i,j]
                br +=1
            end
            if i == j
                C[i,j] = el1
            elseif i < j
                C[i,j] = A[i,j]
            else
                C[i,j] = B[i,j]
            end
        end
    end
    return C, s/br
end