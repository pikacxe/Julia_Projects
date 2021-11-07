function funk(A,B)
    m = []
    s = 0
    a,b = size(A)
    for i in 1:a
        for j in 1:b
            if j > i
                push!(m,A[i,j])
            elseif i > j
                push!(m,B[i,j])
            end
            if B[i,j]>0 && rem(B[i,j],3)==0
                s+=B[i,j]
            end
        end
    end
    return m, s
end