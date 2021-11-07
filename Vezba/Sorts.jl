
A = [4 5 31 1 2 5 3252 23 1 5236 1]

#Done
function insertionSort!(x::Array)
    for j in 2:length(x)
        key = x[j]
        i = j-1
        while i>0 && x[i]< key
            x[i+1] = x[i]
            i = i-1
        end
        x[i+1] = key
    end
end

#Done
function mergeSort!(x::Array)
    mergeSortStep!(x,1, length(x))
end

function mergeSortStep!(x::Array, p::Int, r::Int)
    if p < r
        q = Int(floor((p+r)/2))
        mergeSortStep!(x,p,q)
        mergeSortStep!(x,q+1,r)
        mergeParts!(x,p,q,r)
    end
end

function mergeParts!(x::Array, p::Int, q::Int, r::Int)
    L = copy(x[p:q])
    R = copy(x[q+1:r])
    push!(L, typemin(Int64))
    push!(R, typemin(Int64))
    i = j = 1
    for k = p:r
        if L[i] >= R[j]
            x[k] = L[i];
            i = i+1
        else
            x[k] = R[j]
            j = j+1
        end
    end
end

#Done
function selectionSort!(x)
    n = length(x)
    for i in 1:n-1
        minI = i
        for j in i+1:n
            if x[j] > x[minI]
                minI = j
            end
        end
        if i!= minI
            x[i], x[minI] = x[minI], x[i]
        end
    end
end

#Done
function quickSort!(x)
    quickSortStep!(x,1,length(x))
end

function quickSortStep!(x,p,r)
    if p<r
        q = partition!(x,p,r)
        quickSortStep!(x,p,q-1)
        quickSortStep!(x,q+1,r)
    end
end

function partition!(x,p,r)
    pivot = x[r]
    i = p - 1 
    for j in p:r-1
        if x[j] >= pivot
            i = i+1
            x[i],x[j] = x[j],x[i]
        end
    end
    x[i+1], x[r] = x[r], x[i+1]
    return i+1
end

selectionSort!(A)
print(A)