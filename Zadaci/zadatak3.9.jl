function zad39(A,el1)
    a,b = size(A)
    s = 0
    V = []
    for i in 1:a
        for j in 1:b
         if i == j && A[i,j] > el1
            s +=A[i,j]
         end
         if rem(i,2)==1 && rem(A[i,j],el1) == 0
            push!(V,A[i,j])
         end
        end
    end

    return V, s
end