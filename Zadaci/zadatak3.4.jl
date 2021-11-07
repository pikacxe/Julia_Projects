function zad34(d, el1, el2, el3)
    A = zeros(d,d)
    for i in 1:d
        for j in 1:d
            if i + j == d+1
                A[i,j] = el1
            elseif i + j < d+1
                A[i,j] = el2
            else
                A[i,j] = el3
            end
        end
    end

    return A
end