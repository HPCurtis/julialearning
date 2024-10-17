# Julia implemenation of cs50p pset playback
function main()
    input = strip(readline())
    period_insert(input)

end

function period_insert(input) 
   input = replace(input, r"\s+" => "...")
   println(input)
end

main()