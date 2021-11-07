struct Kosarkasi
    ime::String
    prezime::String
    visina::Int
    pozicija::String
end

function zad42(Kosarkasi,pozicija,visina)
    rez = Array(Kosarkasi)
    for i = 1:length(Kosarkasi)
        if Kosarkasi[i].pozicija == pozicija
            if Kosarkasi[i].visina > visina
                push!(rez,Kosarkasi[i])
            end
        end
    end
    return rez
    
end
