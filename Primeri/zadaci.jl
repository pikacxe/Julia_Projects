function funk1(A)
    (a,b) = size(A)
    s = 0
    for i in 1:a
        for j in 1:b
            if rem(i+j,2) == 0 
                s+=A[i,j]
            end
        end
    end
    return s
end


function funk2(A)
    (a,b) = size(A)
    s = 0
    br = 0
    for i in 1:a
        for j in 1:b
            if(rem(j,2)==1)
                if rem(A[i,j],2)==0
                    s+=A[i,j]
                    br+=1
                end
            end
        end
    end
    return s/br
end

function funk3(A)
     range10 = zeros(0)
     range100 = zeros(0)
     range1000 = zeros(0)
    n = size(A)[2]
    for i in 1:n
        if A[i]>=0 && A[i] <10
            push!(range10,A[i])
        elseif  A[i]>=10 && A[i]<100
            push!(range100,A[i])
        elseif A[i]>=100 && A[i]<1000
            push!(range1000,A[i])
        end
    end
    return range10, range100, range1000
end