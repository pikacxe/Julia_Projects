struct Student
    ime::String
    prezime::String
    brojIndeksa
end;

s1 = Student("Mitar","Miric",10)

A = [1,2,3,4,5,6,7,8,9,10]
function Sort(A,keys)    
    rez = []
    for k = 1:length(A)
        if A[k] == keys
            push!(rez,k)
        end
    end
    return rez
end