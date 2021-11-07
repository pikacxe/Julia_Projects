function zad36(A)
    a,b = size(A)
    s = 1
    if( a!=b)
        return NaN
    end
    for i in 1:a
        for j in 1:a
            if i == j
                s *= A[i,j]
            end
        end
    end
    return s
end