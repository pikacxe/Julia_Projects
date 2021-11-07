# Ilija Spasić PR 34-2020

# Predmetni projekat - Bucket Sort algoritam

# Zadatak: Neka je dat niz brojeva iz intervala [1..100]. 
# Sortirati ovaj niz Bucket Sort metodom i ispisati tako dobijeni rezultat na ekran.
#
#     Skripta je dužna da kreira dati niz sa bar 30 brojeva, 
# pozove funkciju BucketSort() koja sortira ovaj niz i ispiše ga na ekran. 
# Funkcija BucketSort() sortira niz Bucket Sort metodom, i vraća sortirani niz.

using Printf

include("bucketSort.jl")

a = 1
b = 100

X = generateArray(a,b)

sortedX = bucketSort(X,"r")

println("Niz pre sortiranja:\t Niz posle sortiranja: \n")

for i in 1:length(X)
    @printf("Niz[%2i] = %3i \t\t Niz[%2i] = %3i\n",
            i, X[i], i, sortedX[i])
end