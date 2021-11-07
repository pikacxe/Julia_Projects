function zad35(d, el1, el2)
    A = zeros(d,d)
    A[:, 1:2:end] .= el1
    A[:, 2:2:end] .= el2
    return A
    
end