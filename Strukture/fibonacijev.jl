f = [1,1]
for i in 1:100
    if (f[i]+f[i+1]) > 1000
        break
    end
    push!(f,f[i]+f[i+1])
end
print(vec(f))