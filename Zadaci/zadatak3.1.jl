function zad31a(n,k)
    return faktorijel(n)/(faktorijel(k)*faktorijel(n-k))
end

function faktorijel(n)
    if n == 2
        return n
    end
    return n * fakt(n-1)    
end


function zad31b(n,k)
    if n == k || k == 0 
        return 1 
    end
    return zad31b(n-1,k) + zad31b(n-1,k-1)   
end

function zad31c(n,k)
    if k == 0
        return 1
    end
    return zad31c(n,n-1) * (n-k+1)/k
    
end