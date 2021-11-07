function primer33(A)
    A[:, 2:2:end] .= 0
    return A
end

function fakt(n)
    if n == 2
        return n
    end
    return n * fakt(n-1)
end
