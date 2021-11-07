# Ilija Spasić PR 34-2020

"""
    generateArray(a,b,n=30)

Funkcija za generisanje zadatog niza brojeva iz opsega **[1 ... 100]**,
sa najmanje 30 elementa. Gde parametar **a** predstavlja početak opsega, parametar **b** kraj
opsega, dok je parametar **n** opcioni parametar za broj elemenata generisanog niza.
"""
function generateArray(a::Int64, b::Int64, n::Int64=30)::Array{Int64}
    if a < 1 || b > 100
        error("Neispravan opseg funkcije. Za vise informacija upisite ?generateArray")
    end
    X = [ ]
    for _ in 1:n
        push!(X, Int64(rand(a:b)))
    end
    return X
end

"""

    bucketSort(X::Array, smer::String)

Funkcija sortiranja niza primenom Bucket Sort algoritma. Gde smer uzima vrednosti
**"o"** za sortiranje u opadajućem poretku i 
**"r"** za sortiranje u rastućem poretku
"""
function bucketSort(X::Array{Int64},smer::String="r")
    if smer != "r" && smer != "o"
        error("Pogrešan parametar funkcije! Proverite ? bucketSort")
    end
    rez = [ ]
    M = maximum(X)
    n = M/length(X)
    buckets = [ ]
    for _ in 1:length(X)
        push!(buckets,[ ])
    end
    for i in 1:length(X)
        j = Int64(floor((X[i]/n)))
        j = j == 0 ? 1 : j
        if j != length(X)
            push!(buckets[j],X[i])
        else
            push!(buckets[length(X)-1],X[i])
        end
    end
    for i in 1:length(X)
        insertSortBucket(buckets[i],smer)
    end
    if smer == "o"
        for i in 1:length(X)
            rez = vcat(buckets[i],rez)
        end
    else
        for i in 1:length(X)
            rez = vcat(rez,buckets[i])
        end
    end
    return rez
end

"""

    insertSortBucket(x::Array)

Pomoćna funkcija za sortiranja podeljenih delova (bucket-a) kod
Bucket Sort algoritma koja koristi Insertion Sort algoritam.
"""
function insertSortBucket(x,smer)
    for j in 2:length(x)
        key = x[j]
        i = j-1
        while i>0 && (smer == "o" ? x[i] < key : x[i] > key)
            x[i+1] = x[i]
            i = i-1
        end
        x[i+1] = key
    end
end


