function zad41(A,key)
    br = 0
    for i=1:length(A)
        if(A[i] == key)
            br +=1
        end
        if(A[i] != key && br !=0)
            break 
        end
    end
    return br
end


