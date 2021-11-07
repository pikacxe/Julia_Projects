function generateArray(a::Int64, b::Int64, n::Int64=30)::Array{Int64}
    X = [ ]
    for _ in 1:n
        push!(X, Int64(rand(a:b)))
    end
    return X
end

function funk(x)
    mergeSortStep(x,1,length(x))
    return x
end

function mergeSortStep(x,p,r)
    if p < r
        q = Int(floor((p+r)/2))
        mergeSortStep(x,p,q)
        mergeSortStep(x,q+1,r)
        mergeParts(x,p,q,r)
    end
end

function mergeParts(x,p,q,r)
    L = copy(x[p:q])
    R = copy(x[q+1:r])
    push!(L,typemin(Int64))
    push!(R,typemin(Int64))
    i = j = 1
    for k = p:r
        if L[i] >= R[j]
            x[k] = L[i]
            i +=1
        else
            x[k] = R[j]
            j +=1
        end
    end
    
end

function funk1(x)
    for i in 1:length(x)-1
        minI = i
        for j in i+1:length(x)
            if x[j] < x[minI]
                minI = j
            end
        end
        if i != minI 
            x[i], x[minI] = x[minI], x[i]
        end
    end
    return x
end

function funk2(x)
    for i in 2:length(x)
        key = x[i]
        j = i - 1
        while j>0 && x[j] < key
            x[j+1] = x[j]
            j -=1
        end
        x[j+1] = key
    end
    return x
end

function funk3(x)
    quickSortStep(x,1,length(x))
    return x
end

function quickSortStep(x,p,r)
    if p < r
        q = partition(x,p,r)
        quickSortStep(x,p,q-1)
        quickSortStep(x,q+1,r)
    end 
end

function partition(x,p,r)
    pivot = x[r]
    i = p - 1
    for j in p:r-1
        if x[j] <= pivot
            i += 1
            x[i], x[j] = x[j], x[i]
        end
    end
    x[i+1], x[r] = x[r], x[i+1]
    return i+1
end

funk3(generateArray(1,10,10))