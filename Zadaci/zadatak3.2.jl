function kvadratnajna(a,b,c)
    if (b*b - 4*a*c) == 0
        return -b / 2 * a , -b / 2 * a
    end
    return (-b - sqrt(b*b - 4*a*c)) / 2 * a, (-b + sqrt(b*b - 4*a*c)) / 2 * a
    
end