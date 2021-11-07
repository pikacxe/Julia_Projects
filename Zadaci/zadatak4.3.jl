A = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]


function zad43(A,key)
    m = Int(floor(length(A)/2))
    if A[m]<key
        return "Element se nalazi u prvoj polovini"
    elseif A[m] == key
        return "Element se nalazi na sredini niza"
    else
        return "Element se nalazi u drugoj polovini"
    end
end


function zad43A(A,key)
    m = Int(floor(length(A)/2))
    if A[m] == key
        return "Element se nalazi na sredini niza"
    end
    k = length(A)
    i = 1
    while(i<m && k > m)
        if A[i] == key
            return "Element nalazi se u prvoj polovini"
        elseif A[k] == key
            return "Element se nalazi u drugoj polovini"
        end
        i+=1
        k-=1
    end

    return "Element se ne nalazi u nizu" 
end